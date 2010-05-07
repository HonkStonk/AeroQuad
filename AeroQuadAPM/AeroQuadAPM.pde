/* ********************************************************************** */
/*                    Ardupilot Mega Quadcopter                           */
/*                                                                        */
/* Code based on ArduIMU DCM code from Diydrones.com                      */
/* (Original ArduIMU code from Jordi Muñoz and William Premerlani)        */
/* Ardupilot core code : from DIYDrones.com development team              */
/* Author : Jose Julio                                                    */
/* Date : 10-04-2010                                                      */
/* Version : 1.24                                                         */
/* Hardware : ArduPilot Mega + Sensor Shield (Beta)                       */
/* This code use this libraries :                                         */
/*   APM_RC_QUAD : Radio library (adapted for quads)                      */
/*   APM_ADC : External ADC library                                       */
/*   DataFlash : DataFlash log library                                    */
/*   GPS_UBLOX or GPS_NMEA: GPS library                                   */
/* ********************************************************************** */

#include <APM_ADC.h>
#include <APM_RC_QUAD.h>
#include <DataFlash.h>
// Put your GPS library here:
#include <GPS_NMEA.h>  // MTK GPS

#include <Wire.h>   // For magnetometer readings

/* ***************************************************************************** */
/*  CONFIGURATION PART                                                           */
/* ***************************************************************************** */
//Adjust this parameter for your lattitude
#define GEOG_CORRECTION_FACTOR 0.87 // cos(lattitude) 

#define MAGNETOMETER 0  // 0 : No magnetometer, 1: Magnetometer

// QuadCopter Attitude control PID GAINS
#define KP_QUAD_ROLL 1.5  // 1.6 //1.75
#define KD_QUAD_ROLL 0.35 // 0.4  //Absolute max:0.85
#define KI_QUAD_ROLL 0.4  // 0.4 //0.45
#define KP_QUAD_PITCH 1.5 
#define KD_QUAD_PITCH 0.35 
#define KI_QUAD_PITCH 0.4
#define KP_QUAD_YAW 3.5 // 3.8
#define KD_QUAD_YAW 1.2 // 1.3
#define KI_QUAD_YAW 0.15 // 0.15

#define KD_QUAD_COMMAND_PART 16.0   // for special KD implementation (in two parts). Higher values makes the quadcopter more responsive to user inputs

// Position control PID GAINS
#define KP_GPS_ROLL 0.03
#define KD_GPS_ROLL 0.0
#define KI_GPS_ROLL 0.01
#define KP_GPS_PITCH 0.03
#define KD_GPS_PITCH 0.0
#define KI_GPS_PITCH 0.01

#define GPS_MAX_ANGLE 16  // Maximun command roll and pitch angle from position control

// Altitude control PID GAINS
#define KP_ALTITUDE 0.8
#define KD_ALTITUDE 0.3
#define KI_ALTITUDE 0.2

// The IMU should be correctly adjusted : Gyro Gains and also initial IMU offsets:
// We have to take this values with the IMU flat (0º roll, 0º pitch)
#define acc_offset_x 2034 
#define acc_offset_y 2037
#define acc_offset_z 2025       // We need to rotate the IMU exactly 90º to take this value  
#define gyro_offset_roll 1500  
#define gyro_offset_pitch 1493
#define gyro_offset_yaw 1526

// ADC : Voltage reference 3.3v / 12bits(4096 steps) => 0.8mV/ADC step
// ADXL335 Sensitivity(from datasheet) => 330mV/g, 0.8mV/ADC step => 330/0.8 = 412
// Tested value : 405
#define GRAVITY 405 //this equivalent to 1G in the raw data coming from the accelerometer 
#define Accel_Scale(x) x*(GRAVITY/9.81)//Scaling the raw data of the accel to actual acceleration in meters for seconds square

#define ToRad(x) (x*0.01745329252)  // *pi/180
#define ToDeg(x) (x*57.2957795131)  // *180/pi

// LPR530 & LY530 Sensitivity (from datasheet) => 3.33mV/º/s, 0.8mV/ADC step => 0.8/3.33 = 0.26
// Tested values : 0.23,0.22,0.24
#define Gyro_Gain_X 0.23 //X axis Gyro gain
#define Gyro_Gain_Y 0.22 //Y axis Gyro gain
#define Gyro_Gain_Z 0.24 //Z axis Gyro gain
#define Gyro_Scaled_X(x) x*ToRad(Gyro_Gain_X) //Return the scaled ADC raw data of the gyro in radians for second
#define Gyro_Scaled_Y(x) x*ToRad(Gyro_Gain_Y) //Return the scaled ADC raw data of the gyro in radians for second
#define Gyro_Scaled_Z(x) x*ToRad(Gyro_Gain_Z) //Return the scaled ADC raw data of the gyro in radians for second

//#define Kp_ROLLPITCH 0.0125  //0.010 // Pitch&Roll Proportional Gain
#define Kp_ROLLPITCH 0.002  //0.003125
//#define Ki_ROLLPITCH 0.000010 // Pitch&Roll Integrator Gain
#define Ki_ROLLPITCH 0.0000025
#define Kp_YAW 0.5     // Yaw Porportional Gain  
#define Ki_YAW 0.00005 // Yaw Integrator Gain

/*Min Speed Filter for Yaw drift Correction*/
#define SPEEDFILT 3 // >1 use min speed (in m/s) filter for yaw drift cancellation, 0=do not use

/*For debugging purposes*/
#define OUTPUTMODE 1  //If value = 1 will print the corrected data, 0 will print uncorrected data of the gyros (with drift), 2 Accel only data

//Sensor: GYROX, GYROY, GYROZ, ACCELX, ACCELY, ACCELZ
uint8_t sensors[6] = {1,2,0,3,4,5};  // For ArduPilot Mega Sensor Shield Hardware

//Sensor: GYROX, GYROY, GYROZ, ACCELX, ACCELY, ACCELZ
int SENSOR_SIGN[]={1,-1,-1,1,-1,1,-1,-1,-1}; //{1,-1,-1,-1,1,-1}

int AN[6]; //array that store the 6 ADC channels
int AN_OFFSET[6]; //Array that store the Offset of the gyros and accelerometers

float G_Dt=0.02;    // Integration time for the gyros (DCM algorithm)

float Accel_Vector[3]= {0,0,0}; //Store the acceleration in a vector
float Accel_Vector_unfiltered[3]= {0,0,0}; //Store the acceleration in a vector
//float Accel_magnitude;
//float Accel_weight;
float Gyro_Vector[3]= {0,0,0};//Store the gyros rutn rate in a vector
float Omega_Vector[3]= {0,0,0}; //Corrected Gyro_Vector data
float Omega_P[3]= {0,0,0};//Omega Proportional correction
float Omega_I[3]= {0,0,0};//Omega Integrator
float Omega[3]= {0,0,0};

float errorRollPitch[3]= {0,0,0};
float errorYaw[3]= {0,0,0};
float errorCourse=0;
float COGX=0; //Course overground X axis
float COGY=1; //Course overground Y axis

float roll=0;
float pitch=0;
float yaw=0;

//Magnetometer variables
int magnetom_x;
int magnetom_y;
int magnetom_z;
float MAG_Heading;
float mag_heading_x;
float mag_heading_y;

unsigned int counter=0;

float DCM_Matrix[3][3]= {
  {1,0,0}
  ,{0,1,0}
  ,{0,0,1}
}; 
float Update_Matrix[3][3]={{0,1,2},{3,4,5},{6,7,8}}; //Gyros here

float Temporary_Matrix[3][3]={
  {0,0,0}
  ,{0,0,0}
  ,{0,0,0}
};

// GPS variables
float speed_3d=0;
int GPS_ground_speed=0;

//Log variables
int log_roll;
int log_pitch;
int log_yaw;

long timer=0; //general porpuse timer 
long timer_old;

// Sonar variables
static volatile unsigned long sonar_start_ms;
static volatile unsigned char sonar_start_t0;
static volatile unsigned long sonar_pulse_start_ms;
static volatile unsigned char sonar_pulse_start_t0;
static volatile unsigned long sonar_pulse_end_ms;
static volatile unsigned char sonar_pulse_end_t0;
static volatile byte sonar_status=0;
static volatile byte sonar_new_data=0;
int sonar_value=0;

// Attitude control variables
float command_rx_roll=0;        // comandos recibidos rx
float command_rx_roll_old;
float command_rx_roll_diff;
float command_rx_pitch=0;
float command_rx_pitch_old;
float command_rx_pitch_diff;
float command_rx_yaw=0;
float command_rx_yaw_diff;
int control_roll;           // resultados del control
int control_pitch;
int control_yaw;
float K_aux;

// Attitude control
float roll_I=0;
float roll_D;
float err_roll;
float pitch_I=0;
float pitch_D;
float err_pitch;
float yaw_I=0;
float yaw_D;
float err_yaw;

//Position control
long target_longitude;
long target_lattitude;
byte target_position;
float gps_err_roll;
float gps_err_roll_old;
float gps_roll_D;
float gps_roll_I=0;
float gps_err_pitch;
float gps_err_pitch_old;
float gps_pitch_D;
float gps_pitch_I=0;
float command_gps_roll;
float command_gps_pitch;

//Altitude control
int Initial_Throttle;
int target_sonar_altitude;
int err_altitude;
int err_altitude_old;
float command_altitude;
float altitude_I;
float altitude_D;


// AP_mode : 1=> Position hold  2=>Stabilization assist mode (normal mode)
byte AP_mode = 2;             

long t0;
int num_iter;
float aux_debug;

// Radio definitions
int Neutro_yaw;
int ch_roll;
int ch_pitch;
int ch_throttle;
int ch_yaw;
#define CHANN_CENTER 1500
#define MIN_THROTTLE 1040       // Throttle pulse width at minimun...

/* ************************************************************ */
/* Altitude control... (based on sonar) */
void Altitude_control(int target_sonar_altitude)
{
  err_altitude_old = err_altitude;
  err_altitude = target_sonar_altitude - sonar_value;  
  altitude_D = (float)(err_altitude-err_altitude_old)/G_Dt;
  altitude_I += (float)err_altitude*G_Dt;
  altitude_I = constrain(altitude_I,-100,100);
  command_altitude = Initial_Throttle + KP_ALTITUDE*err_altitude + KD_ALTITUDE*altitude_D + KI_ALTITUDE*altitude_I;
}

/* ************************************************************ */
/* Position control... */
void Position_control(long lat_dest, long lon_dest)
{
  long Lon_diff;
  long Lat_diff;
  float gps_err_roll;
  float gps_err_pitch;
  
  Lon_diff = lon_dest - GPS.Longitude;
  Lat_diff = lat_dest - GPS.Lattitude;
  
  // ROLL
  gps_err_roll_old = gps_err_roll;
  //Optimization : cos(yaw) = DCM_Matrix[0][0] ;  sin(yaw) = DCM_Matrix[1][0] 
  gps_err_roll = (float)Lon_diff*GEOG_CORRECTION_FACTOR*DCM_Matrix[0][0] - (float)Lat_diff*DCM_Matrix[1][0];
  
  gps_roll_D = (gps_err_roll-gps_err_roll_old)/G_Dt;
  
  gps_roll_I += gps_err_roll*G_Dt;
  gps_roll_I = constrain(gps_roll_I,-500,500);
  
  command_gps_roll = KP_GPS_ROLL*gps_err_roll + KD_GPS_ROLL*gps_roll_D + KI_GPS_ROLL*gps_roll_I;
  command_gps_roll = constrain(command_gps_roll,-GPS_MAX_ANGLE,GPS_MAX_ANGLE); // Limit max command
  
  // PITCH
  gps_err_pitch_old = gps_err_pitch;
  gps_err_pitch = -(float)Lat_diff*DCM_Matrix[0][0]- (float)Lon_diff*GEOG_CORRECTION_FACTOR*DCM_Matrix[1][0];
  
  gps_pitch_D = (gps_err_pitch-gps_err_pitch_old)/G_Dt;
  
  gps_pitch_I += gps_err_pitch*G_Dt;
  gps_pitch_I = constrain(gps_pitch_I,-500,500);
  
  command_gps_pitch = KP_GPS_PITCH*gps_err_pitch + KD_GPS_PITCH*gps_pitch_D + KI_GPS_PITCH*gps_pitch_I;
  command_gps_pitch = constrain(command_gps_pitch,-GPS_MAX_ANGLE,GPS_MAX_ANGLE); // Limit max command
}

/* ************************************************************ */
// ROLL, PITCH and YAW PID controls... 
// Input : desired Roll, Pitch and Yaw absolute angles. Output : Motor commands
void Attitude_control()
{
  // ROLL CONTROL    
  if (AP_mode==2)        // Normal Mode => Stabilization mode
    err_roll = command_rx_roll - ToDeg(roll);
  else
    err_roll = (command_rx_roll + command_gps_roll) - ToDeg(roll);  // Position control
    
  err_roll = constrain(err_roll,-25,25);  // to limit max roll command...
  
  roll_I += err_roll*G_Dt;
  roll_I = constrain(roll_I,-40,40);
  // D term implementation => two parts: gyro part and command part
  // To have a better (faster) response we can use the Gyro reading directly for the Derivative term...
  // Omega[] is the raw gyro reading plus Omega_I, so it´s bias corrected
  // We also add a part that takes into account the command from user (stick) to make the system more responsive to user inputs
  roll_D = command_rx_roll_diff*KD_QUAD_COMMAND_PART - ToDeg(Omega[0]);  // Take into account Angular velocity of the stick (command)
  
  // PID control
  control_roll = KP_QUAD_ROLL*err_roll + KD_QUAD_ROLL*roll_D + KI_QUAD_ROLL*roll_I; 
  
  // PITCH CONTROL
  if (AP_mode==2)        // Normal mode => Stabilization mode
    err_pitch = command_rx_pitch - ToDeg(pitch);
  else
    err_pitch = (command_rx_pitch + command_gps_pitch) - ToDeg(pitch);  // Position Control
    
  err_pitch = constrain(err_pitch,-25,25);  // to limit max pitch command...
  
  pitch_I += err_pitch*G_Dt;
  pitch_I = constrain(pitch_I,-40,40);
  // D term
  pitch_D = command_rx_pitch_diff*KD_QUAD_COMMAND_PART - ToDeg(Omega[1]);
 
  // PID control
  control_pitch = KP_QUAD_PITCH*err_pitch + KD_QUAD_PITCH*pitch_D + KI_QUAD_PITCH*pitch_I; 
  
  // YAW CONTROL
  
    err_yaw = command_rx_yaw - ToDeg(yaw);
    if (err_yaw > 180)    // Normalize to -180,180
      err_yaw -= 360;
    else if(err_yaw < -180)
      err_yaw += 360;
  
  err_yaw = constrain(err_yaw,-50,50);  // to limit max yaw command...
  
  yaw_I += err_yaw*G_Dt;
  yaw_I = constrain(yaw_I,-40,40);
  yaw_D = command_rx_yaw_diff*KD_QUAD_COMMAND_PART - ToDeg(Omega[2]);
 
  // PID control
  control_yaw = KP_QUAD_YAW*err_yaw + KD_QUAD_YAW*yaw_D + KI_QUAD_YAW*yaw_I;
}

// Maximun slope filter for radio inputs... (limit max differences between readings)
int channel_filter(int ch, int ch_old)
{
  int diff_ch_old;
  
  if (ch_old==0)      // ch_old not initialized
    return(ch);
  diff_ch_old = ch - ch_old;      // Difference with old reading
  if (diff_ch_old<0)
     {
     if (diff_ch_old<-40)
       return(ch_old-40);        // We limit the max difference between readings
     }
  else
     {
     if (diff_ch_old>40)    
       return(ch_old+40);
     }
  //return((ch+ch_old)>>1);   // Small filtering
  return(ch);
}


/* ****** SETUP ********************************************************************* */
void setup()
{
  int i;
  
  pinMode(42,OUTPUT); //Yellow LED
  pinMode(43,OUTPUT); //Blue LED
  pinMode(47,OUTPUT); //Green LED
  pinMode(36,INPUT);  //Switch (pin PC1)
  
  APM_RC_QUAD.Init();    // APM Radio initialization
  APM_ADC.Init();   // APM ADC library initialization
  DataFlash.Init(); // DataFlash log initialization
  GPS.Init();       // GPS Initialization

  // RC channels Initialization (Quad motors)  
  APM_RC_QUAD.OutputCh(0,MIN_THROTTLE+10);  // Motors stoped
  APM_RC_QUAD.OutputCh(1,MIN_THROTTLE+10);
  APM_RC_QUAD.OutputCh(2,MIN_THROTTLE+10);
  APM_RC_QUAD.OutputCh(3,MIN_THROTTLE+10);
  
  #if (MAGNETOMTER==1)
    I2C_Init();  // I2C initialization
    delay(100);
    Compass_Init();  // Magnetometer initialization
  #endif
 
  DataFlash.StartWrite(1);   // Start a write session on page 1
  
  Serial.begin(57600);
  Serial.println();
  Serial.println("ArduPilot Mega Quadcopter v1.24");
  
  // Check if we enable the DataFlash log Read Mode (switch)
  while (digitalRead(36)==0)
    {
    Serial.println("Entering Log Read Mode...");
    Log_Read(1,1000);
    delay(30000);
    }
    
  delay(2500);
  
  Read_adc_raw();
  delay(20);
 
  // Offset values for accels and gyros...
  AN_OFFSET[3] = acc_offset_x;
  AN_OFFSET[4] = acc_offset_y;
  AN_OFFSET[5] = acc_offset_z;
  AN_OFFSET[0] = gyro_offset_roll;
  AN_OFFSET[1] = gyro_offset_pitch;
  AN_OFFSET[2] = gyro_offset_yaw;
 
  // Take the gyro offset values
  for(i=0;i<250;i++)
    {
    Read_adc_raw();
    for(int y=0; y<=2; y++)   // Read initial ADC values for gyro offset.
      AN_OFFSET[y]=AN_OFFSET[y]*0.8 + AN[y]*0.2;
    delay(20);
    }
 
  for(i=0;i<6;i++)
    {
    Serial.print("AN[]:");
    Serial.println(AN_OFFSET[i]);
    }
   
  Neutro_yaw = APM_RC_QUAD.InputCh(3); // Take yaw neutral radio value
  Serial.print("Yaw neutral value:");
  Serial.println(Neutro_yaw);

  delay(1000);
  timer = millis();
  Read_adc_raw();        // Initialize ADC readings...
  delay(20);
  digitalWrite(47,HIGH);     // Ready to go...
}

/* ***** MAIN LOOP ***** */
void loop(){
  
  int aux;
  int i;
  float aux_float;
  
  if((millis()-timer)>=14)   // Main loop 70Hz
  {
    counter++;
    timer_old = timer;
    timer=millis();
    G_Dt = (timer-timer_old)/1000.0;      // Real time of loop run 
    
    // IMU DCM Algorithm
    Read_adc_raw();
    #if (MAGNETOMETER==1)
    if (counter > 7)  // Read compass data at 10Hz... (7 loop runs)
      {
      counter=0;
      Read_Compass();     // Read I2C magnetometer
      Compass_Heading();  // Calculate magnetic heading  
      }
    #endif
    Matrix_update(); 
    Normalize();
    Drift_correction();
    Euler_angles();
    // *****************
    
    // Output data
    log_roll = ToDeg(roll)*10;
    log_pitch = ToDeg(pitch)*10;
    log_yaw = ToDeg(yaw)*10;
    
    Serial.print(log_roll);
    Serial.print(",");
    Serial.print(log_pitch);
    Serial.print(",");
    Serial.print(log_yaw);
    
    // Write attitude to DataFlash log
    Log_Write_Attitude(log_roll,log_pitch,log_yaw);
    
    if (APM_RC_QUAD.GetState()==1)   // New radio frame?
      {
      // Commands from radio Rx... 
      // Stick position defines the desired angle in roll, pitch and yaw
      ch_roll = channel_filter(APM_RC_QUAD.InputCh(0),ch_roll);
      ch_pitch = channel_filter(APM_RC_QUAD.InputCh(1),ch_pitch);
      ch_throttle = channel_filter(APM_RC_QUAD.InputCh(2),ch_throttle);
      ch_yaw = channel_filter(APM_RC_QUAD.InputCh(3),ch_yaw);
      command_rx_roll_old = command_rx_roll;
      command_rx_roll = (ch_roll-CHANN_CENTER)/15.0;
      command_rx_roll_diff = command_rx_roll-command_rx_roll_old;
      command_rx_pitch_old = command_rx_pitch;
      command_rx_pitch = (ch_pitch-CHANN_CENTER)/15.0;
      command_rx_pitch_diff = command_rx_pitch-command_rx_pitch_old;
      aux_float = (ch_yaw-Neutro_yaw)/180.0;
      command_rx_yaw += aux_float;
      command_rx_yaw_diff = aux_float;
      if (command_rx_yaw > 180)         // Normalize yaw to -180,180 degrees
        command_rx_yaw -= 360.0;
      else if (command_rx_yaw < -180)
        command_rx_yaw += 360.0;
        
      // I use K_aux (channel 6) to adjust gains linked to a knob in the radio... [not used now]
      //K_aux = K_aux*0.8 + ((ch_aux-1500)/100.0 + 0.6)*0.2;
      K_aux = K_aux*0.8 + ((APM_RC_QUAD.InputCh(5)-1500)/300.0 + 0.4)*0.2;
      if (K_aux < 0)
        K_aux = 0;
      
      /*  
      Serial.print(",");
      Serial.print(K_aux);
      */
   
      // We read the Quad Mode from Channel 5
      if (APM_RC_QUAD.InputCh(4) < 1200)
        {
        AP_mode = 1;           // Position hold mode (GPS position control)
        digitalWrite(42,HIGH); // Yellow LED On
        }
      else
        {
        AP_mode = 2;          // Normal mode (Stabilization assist mode)
        digitalWrite(42,LOW); // Yellow LED off
        }
      // Write Radio data to DataFlash log
      Log_Write_Radio(ch_roll,ch_pitch,ch_throttle,ch_yaw,int(K_aux*100),(int)AP_mode);
      }  // END new radio data
      
    if (AP_mode==1)  // Position Control
      {
      if (target_position==0)   // If this is the first time we switch to Position control, actual position is our target position
        {
        target_lattitude = GPS.Lattitude;
        target_longitude = GPS.Longitude;
        Serial.println();
        Serial.print("* Target:");
        Serial.print(target_longitude);
        Serial.print(",");
        Serial.println(target_lattitude);
        target_position=1;
        //target_sonar_altitude = sonar_value;
        //Initial_Throttle = ch3;
        // Reset I terms
        altitude_I = 0;
        gps_roll_I = 0;
        gps_pitch_I = 0;
        }        
      }
    else
      target_position=0;
      
    //Read GPS
    GPS.Read();
    if (GPS.NewData)  // New GPS data?
      {
      GPS.NewData=0;  // We Reset the flag...
      
      //Output GPS data
      //Serial.print(",");
      //Serial.print(GPS.Lattitude);
      //Serial.print(",");
      //Serial.print(GPS.Longitude);
     
      // Write GPS data to DataFlash log
      Log_Write_GPS(GPS.Time, GPS.Lattitude,GPS.Longitude,GPS.Altitude, GPS.Ground_Speed, GPS.Ground_Course, GPS.Fix, GPS.NumSats);
      
      if (GPS.Fix)
        digitalWrite(43,HIGH);  // GPS Fix => Blue LED
      else
        digitalWrite(43,LOW);
        
      if (AP_mode==1)
        {
        if ((target_position==1)&&(GPS.Fix))
          {
          Position_control(target_lattitude,target_longitude);  // Call position hold routine
          /*
          Serial.print("PC:");
          Serial.print(command_gps_roll);
          Serial.print(",");
          Serial.print(command_gps_pitch);
          Serial.println();
          */
          }
        else
          {
          //Serial.print("NOFIX");
          command_gps_roll=0;
          command_gps_pitch=0;
          }
        }
      }
    
    // Attitude control (Roll, Pitch, yaw)
    Attitude_control();
      
    // Quadcopter mix
    if (ch_throttle > (MIN_THROTTLE+25))  // Minimun throttle to start control
      {
      APM_RC_QUAD.OutputCh(0,ch_throttle - control_roll - control_yaw);    // Right motor
      APM_RC_QUAD.OutputCh(1,ch_throttle + control_roll - control_yaw);    // Left motor
      APM_RC_QUAD.OutputCh(2,ch_throttle + control_pitch + control_yaw);   // Front motor
      APM_RC_QUAD.OutputCh(3,ch_throttle - control_pitch + control_yaw);   // Back motor
      }
    else
      {
      roll_I = 0;  // reset I terms...
      pitch_I = 0;
      yaw_I = 0; 
      APM_RC_QUAD.OutputCh(0,MIN_THROTTLE);  // Motors stoped
      APM_RC_QUAD.OutputCh(1,MIN_THROTTLE);
      APM_RC_QUAD.OutputCh(2,MIN_THROTTLE);
      APM_RC_QUAD.OutputCh(3,MIN_THROTTLE);
      // Initialize yaw command to actual yaw
      command_rx_yaw = ToDeg(yaw);
      command_rx_yaw_diff = 0;
      }
    Serial.println();  // Line END 
    }
}
