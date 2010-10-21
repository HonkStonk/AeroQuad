#define BATMONPIN 0
#define BATTOADFACTOR 0.012988F //A/D bit * 0.012988 if aref is 3.3V and 3S lipo is divided 10k/3k3 to GND
#define RL_LED 60 //61 is FL
#define RR_LED 58 
#define FR_LED 59 
#define FL_LED 61 
#define BATLOWLEVEL 10
#define LEDDELAY 200

float batMonVoltage = 0;

void ledCW(void){ 
  digitalWrite(RL_LED, HIGH);
  delay(LEDDELAY);
  digitalWrite(RL_LED, LOW);
  digitalWrite(RR_LED, HIGH);
  delay(LEDDELAY);
  digitalWrite(RR_LED, LOW);
  digitalWrite(FR_LED, HIGH);
  delay(LEDDELAY);
  digitalWrite(FR_LED, LOW);
  digitalWrite(FL_LED, HIGH);
  delay(LEDDELAY);
  digitalWrite(FL_LED, LOW); 
};

void ledsON(void){
  digitalWrite(RL_LED, HIGH);
  digitalWrite(RR_LED, HIGH);
  digitalWrite(FR_LED, HIGH);
  digitalWrite(FL_LED, HIGH); 
};

void ledsOFF(void){
  digitalWrite(RL_LED, LOW);
  digitalWrite(RR_LED, LOW);
  digitalWrite(FR_LED, LOW);
  digitalWrite(FL_LED, LOW); 
};

void toggleLEDs(void){
 byte ledState;
     if (ledState == LOW) ledState = HIGH;
     else ledState = LOW;
     digitalWrite(RL_LED, ledState);
     digitalWrite(RR_LED, ledState);
     digitalWrite(FR_LED, ledState);
     digitalWrite(FL_LED, ledState); 
};


float checkBattery (){
  batMonVoltage = (float)analogRead(BATMONPIN) * BATTOADFACTOR;
};
