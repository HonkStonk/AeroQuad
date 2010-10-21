/*
  AeroQuad v2.1 - October 2010
  www.AeroQuad.com
  Copyright (c) 2010 Ted Carancho.  All rights reserved.
  An Open Source Arduino based multicopter.
 
  This program is free software: you can redistribute it and/or modify 
  it under the terms of the GNU General Public License as published by 
  the Free Software Foundation, either version 3 of the License, or 
  (at your option) any later version. 

  This program is distributed in the hope that it will be useful, 
  but WITHOUT ANY WARRANTY; without even the implied warranty of 
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the 
  GNU General Public License for more details. 

  You should have received a copy of the GNU General Public License 
  along with this program. If not, see <http://www.gnu.org/licenses/>. 
*/

// This header file defines function calls and ISR's needed to communicatw
// over SPI, I2C and other bus communication protocols for measuring sensor data

// *******************************************
// SPI Communication for APM ADC
// Code written by: Jordi Munoz and Jose Julio
// *******************************************
#ifdef ArduCopter
#include <inttypes.h>
#include <avr/interrupt.h>
#include "WConstants.h"

#define bit_set(p,m) ((p) |= (1<<m)) 
#define bit_clear(p,m) ((p) &= ~(1<<m))

// We use Serial Port 2 in SPI Mode
#define ADC_DATAOUT 51        // MOSI
#define ADC_DATAIN  50        // MISO 
#define ADC_SPICLOCK  52      // SCK
#define ADC_CHIP_SELECT 33    // PC4   9 // PH6  Puerto:0x08 Bit mask : 0x40

// Commands for reading ADC channels on ADS7844
const unsigned char adc_cmd[9]=  { 0x87, 0xC7, 0x97, 0xD7, 0xA7, 0xE7, 0xB7, 0xF7, 0x00 };
volatile long adc_value[8];
volatile unsigned char adc_counter[8];

unsigned char ADC_SPI_transfer(unsigned char data) {
  /* Wait for empty transmit buffer */
  while ( !( UCSR2A & (1<<UDRE2)) );
  /* Put data into buffer, sends the data */
  UDR2 = data;
  /* Wait for data to be received */
  while ( !(UCSR2A & (1<<RXC2)) );
  /* Get and return received data from buffer */
  return UDR2;
}

ISR (TIMER2_OVF_vect) {
  uint8_t ch;
  unsigned int adc_tmp;
  
  //bit_set(PORTL,6); // To test performance
  bit_clear(PORTC,4);             // Enable Chip Select (PIN PC4)
  ADC_SPI_transfer(adc_cmd[0]);       // Command to read the first channel
  for (ch=0;ch<7;ch++) {
    adc_tmp = ADC_SPI_transfer(0)<<8;    // Read first byte
    adc_tmp |= ADC_SPI_transfer(adc_cmd[ch+1]);  // Read second byte and send next command
    adc_value[ch] += adc_tmp>>3;     // Shift to 12 bits
    adc_counter[ch]++;               // Number of samples
    }
  bit_set(PORTC,4);                // Disable Chip Select (PIN PC4)
  //bit_clear(PORTL,6); // To test performance
  TCNT2 = 104;        // 400 Hz
}

void initialize_ArduCopter_ADC(void) {
  unsigned char tmp;
  
  pinMode(ADC_CHIP_SELECT,OUTPUT);
  
  digitalWrite(ADC_CHIP_SELECT,HIGH); // Disable device (Chip select is active low)

  // Setup Serial Port2 in SPI mode
  UBRR2 = 0;   
  DDRH |= (1<<PH2);  // SPI clock XCK2 (PH2) as output. This enable SPI Master mode
  // Set MSPI mode of operation and SPI data mode 0.
  UCSR2C = (1<<UMSEL21)|(1<<UMSEL20); //|(0<<UCPHA2)|(0<<UCPOL2);
  // Enable receiver and transmitter.
  UCSR2B = (1<<RXEN2)|(1<<TXEN2);
  // Set Baud rate
  UBRR2 = 2; // SPI clock running at 2.6MHz


  // Enable Timer2 Overflow interrupt to capture ADC data
  TIMSK2 = 0;  // Disable interrupts 
  TCCR2A = 0;  // normal counting mode 
  TCCR2B = _BV(CS21)|_BV(CS22);     // Set prescaler of 256
  TCNT2 = 0;
  TIFR2 = _BV(TOV2);  // clear pending interrupts; 
  TIMSK2 =  _BV(TOIE2) ; // enable the overflow interrupt
}

int analogRead_ArduCopter_ADC(unsigned char ch_num) {
  int result;
  cli();  // We stop interrupts to read the variables
  if (adc_counter[ch_num]>0)
	result = adc_value[ch_num]/adc_counter[ch_num];
  else
	result = 0;
  adc_value[ch_num] = 0;    // Initialize for next reading
  adc_counter[ch_num] = 0;
  sei();
  return(result);
}
  
void zero_ArduCopter_ADC(void) {
  for (byte n; n<8; n++) {
    adc_value[n] = 0;
    adc_counter[n] = 0;
  }
}
#endif

// ********************************************
// I2C Communication with Wii Sensors
// Original code written by lamarche_mathieu
// Modifications by jihlein 
// ********************************************
// I2C function calls defined in I2C.h

short NWMP_acc[3];
short NWMP_gyro[3];

void Init_Gyro_acc();
void updateControls();

void Init_Gyro_Acc(void) {
  //Init WM+ and Nunchuk
  updateRegisterI2C(0x53, 0xFE, 0x05);
  delay(100);
  updateRegisterI2C(0x53, 0xF0, 0x55);
  delay(100);
};

void updateControls() {
  int i,j;
  unsigned char buffer[6];

  for(j=0;j<2;j++) {
    sendByteI2C(0x52, 0x00);
    Wire.requestFrom(0x52,6);
    for(i = 0; i < 6; i++) 
      buffer[i] = Wire.receive();
    if (buffer[5] & 0x02) { //If WiiMP
      NWMP_gyro[0]= (((buffer[4]>>2)<<8) +  buffer[1])/16;  //hji
      NWMP_gyro[1]= (((buffer[5]>>2)<<8) +  buffer[2])/16;  //hji
      NWMP_gyro[2]=-(((buffer[3]>>2)<<8) +  buffer[0])/16;  //hji
    }
    else {//If Nunchuk
      NWMP_acc[0]=(buffer[2]<<1)|((buffer[5]>>4)&0x01);  //hji
      NWMP_acc[1]=(buffer[3]<<1)|((buffer[5]>>5)&0x01);  //hji
      NWMP_acc[2]=buffer[4];                             //hji
      NWMP_acc[2]=NWMP_acc[2]<<1;                        //hji
      NWMP_acc[2]=NWMP_acc[2] & 0xFFFC;                  //hji
      NWMP_acc[2]=NWMP_acc[2]|((buffer[5]>>6)&0x03);     //hji
    }
  }
}

// ***************************************************
// Serial communication with CHR-6DM on Mega Serial 1
// BAUD on Serial1: 115200 (using Arduino0021)
// Broadcast setting: 100Hz (conf. setting 73)
// Active Channels (in order): YAW, PITCH, ROLL, ACCEL_Z
// Coding by Lokling, Spaghetti by Honk
// ***************************************************

#ifdef ExternalAHRS

float CHR_yawClean, CHR_pitchClean, CHR_rollClean, CHR_accel_zClean, CHR_accelZ_Zero, Current_Vertical_Speed, rawCHR_accel_z, zeroedAccelerationCHR, CHR_pitchRAW, CHR_rollRAW, CHRzeroPitch, CHRzeroRoll, filteredCHR_accel_z;
double angleFactor;
int CHR_yawWord, CHR_pitchWord, CHR_rollWord, CHR_accel_zWord;

//#define COVARZ 2.5F

#define CHR_MESSAGE_LENGTH 16 //in bytes

//byte 1 contains 's'
//byte 2 contains 'n'
//byte 3 contains 'p'
//byte 4 contains PT, packet type
//byte 5 contains N (the number of data bytes to expect)
//FIRST DATA BYTE IS BYTE NUMBER 6
//byte 6 and 7 contains info about active channels
//byte 8 and 9 contains YAW
//byte 10 and 11 contains PITCH
//byte 12 and 13 contains ROLL
//byte 14 and 15 contains ACCEL_Z
//byte 16 and 17 contains CHK_SUM (N+6/N+7)

#define CHR_YAW_FACTOR 0.0109863F //from datasheet
#define CHR_PITCH_FACTOR 0.0109863F
#define CHR_ROLL_FACTOR 0.0109863F
#define CHR_ACCEL_Z_FACTOR 0.106812F

void calibrateCHR6DManlge() {
CHRzeroPitch = CHR_pitchRAW;
CHRzeroRoll = CHR_rollRAW;
}

void zeroCHR6DMaccelerometer() { //call of this assumes quad is not in any movement
CHR_accelZ_Zero = 0;
  delay(10);
  CHR_accelZ_Zero += rawCHR_accel_z;
  delay(10);
  CHR_accelZ_Zero += rawCHR_accel_z; 
  delay(10);
  CHR_accelZ_Zero += rawCHR_accel_z; 
  delay(10);
  CHR_accelZ_Zero += rawCHR_accel_z; 
  delay(10);
  CHR_accelZ_Zero += rawCHR_accel_z; 
  delay(10);
  CHR_accelZ_Zero += rawCHR_accel_z; 
  delay(10);
  CHR_accelZ_Zero += rawCHR_accel_z; 
  delay(10);
  CHR_accelZ_Zero += rawCHR_accel_z; 
  delay(10);
  CHR_accelZ_Zero += rawCHR_accel_z; 
  delay(10);
  CHR_accelZ_Zero += rawCHR_accel_z; 
  
  CHR_accelZ_Zero *= 0.1;
  
  Current_Vertical_Speed = 0;
}

bool readDataPacket(){

  //FIRST DATA BYTE IS BYTE NUMBER 6
    //byte 6 and 7 contains info about active channels
    //byte 8 and 9 contains YAW
    //byte 10 and 11 contains PITCH
    //byte 12 and 13 contains ROLL
    //byte 14 and 15 contains ACCEL_Z
    //byte 16 and 17 contains CHK_SUM (N+6/N+7) //N is expected to be 10

  //YAW
  int yaw1 = (int)Serial1.read();
  int yaw2 = (int)Serial1.read();
  if (yaw1==-1 || yaw2==-1) return false;
  int yawValue =  yaw1<<8;
  yawValue|= yaw2;


  //PITCH
    int pitch1 = (int)Serial1.read();
    int pitch2 = (int)Serial1.read();
    if (pitch1==-1 || pitch2==-1) return false;
    int pitchValue =  pitch1<<8;
    pitchValue|= pitch2;

  //ROLL
    int roll1 = (int)Serial1.read();
    int roll2 = (int)Serial1.read();
    if (roll1==-1 || roll2==-1) return false;
    int rollValue =  roll1<<8;
    rollValue|= roll2;

  //Accel Z
    int z1 = (int)Serial1.read();
    int z2 = (int)Serial1.read();
    if (z1==-1 || z2==-1) return false;
    int zValue =  z1<<8;
    zValue|= z2;

    //Checksum
    int checksum1 = (int)Serial1.read();
    int checksum2 = (int)Serial1.read();
    if (checksum1==-1 || checksum2==-1) return false;
    int checksumValue =  checksum1<<8;
    checksumValue|= checksum2;

    // We read the whole packet without issues, now copy values to globals

    // Raw values
    CHR_yawWord = yawValue;
    CHR_pitchWord = pitchValue;
    CHR_rollWord = rollValue;
    CHR_accel_zWord = zValue;


    // Scaled values
          CHR_yawClean = (CHR_yawWord * CHR_YAW_FACTOR);
          CHR_pitchRAW = (CHR_pitchWord * CHR_PITCH_FACTOR); //RAW
          CHR_rollRAW = (CHR_rollWord * CHR_ROLL_FACTOR); //RAW
          rawCHR_accel_z = (CHR_accel_zWord * CHR_ACCEL_Z_FACTOR); //I get the -500 milliG or something
    
    CHR_pitchClean = CHR_pitchRAW - CHRzeroPitch; // CHR_pitchRAW is the read in -5 or something CHRzeroPitch is that too, the offset...
    CHR_rollClean = CHR_rollRAW - CHRzeroRoll;
   
    filteredCHR_accel_z = 0.5*(smooth(rawCHR_accel_z,  filteredCHR_accel_z, 0.1)); 
    //angleFactor = (((cos(radians(CHR_rollClean)))) * (cos(radians(CHR_pitchClean)))); //I get the gravity vector, 1.0 if board level, if both 45 deg tilt, 0.5*0.5 = 0.25
    
          //CHR_accel_zClean = (rawCHR_accel_z / angleFactor);//get true milliG from applying the gravity vector

    return true;
}


bool syncToHeader(){
  // Bail out if theres not two full packets in buffer to ensure we can read one full, not updating the sensor reading globals
  // - it might copy in garbage from the buffer, ie  a previous halfread buffer
  if (Serial1.available() < 17*2 ) return false; 

  // Check for each char at a time,
  // so that if we read the last byte of a packet next loop will start at beginnin of next packet

  //byte 1 contains 's'
  //byte 2 contains 'n'
  //byte 3 contains 'p'
  //byte 4 contains PT, packet type
  //byte 5 contains N (the number of data bytes to expect)
   

  if (Serial1.read() != 's') return false;
  if (Serial1.read() != 'n') return false;
  if (Serial1.read() != 'p') return false;
  if (Serial1.read() != 0xB7) return false; // byte 4 element 3 (PT_BYTE)
  if (Serial1.read() != 0x0A) return false; // byte 5 element 4 (N_BYTE) expect 10 dec checks out!
  if (Serial1.read() != 0xE0) return false; // byte6(0xE0) means yaw pitch roll(11100000) and accel (00000010)
  if (Serial1.read() != 0x02) return false;  // byte7(0x02)
  return true; // Yay - we've read a full header and can move on.
}

bool readCHR6DM() {


    if (syncToHeader()==false) return false;

    bool wasSuccessFullRead = readDataPacket();

    // At this time, if we have a successfully read packet, we can afford to flush the input buffer discarding its contents if needed to keep up:
    if (wasSuccessFullRead){
        Serial1.flush();
    }

    return wasSuccessFullRead;

}

#endif
