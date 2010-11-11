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

// Class to define sensors that can determine altitude

// ***********************************************************************
// ************************** Altitude Class *****************************
// ***********************************************************************
// Altitude Adjust Globals
#define EOCPIN 30
#define TEMPERATURE 0
#define PRESSURE 1
int throttleAdjust = 0;
int minThrottleAdjust = -60;
int maxThrottleAdjust = 60;
float holdAltitude;
byte storeAltitude = OFF;
byte altitudeHold = OFF;
long pressureBMP = 100000;
long filteredBMP = 100000;
long pressureSCP = 3500;
long filteredSCP = 3500;
float smoothFactorBMP = 0.05; //perfekt kombo!
float smoothFactorSCP = 0.7; //perfekt kombo!
float mergedBAROalt;

class Altitude {
public:
  double altitude, rawAltitude;
  float groundTemperature; // remove later
  float groundPressure; // remove later
  float groundAltitude;
  float smoothFactor;
  
  Altitude (void) { 
    altitude = 0;
    smoothFactor = 0.03;
  }

  // **********************************************************************
  // The following function calls must be defined inside any new subclasses
  // **********************************************************************
  virtual void initialize(void); 
  virtual void measure(void);
  
  // *********************************************************
  // The following functions are common between all subclasses
  // *********************************************************
  const float getData(void) {
    return altitude - groundAltitude;
  }
  
  const float getRawData(void) {
    return rawAltitude;
  }
  
  void setStartAltitude(float value) {
    altitude = value;
  }
  
  void measureGround(void) {
    // measure initial ground pressure (multiple samples)
    groundAltitude = 0;
    for (int i=0; i < 25; i++) {
      measure();
      delay(26);
      groundAltitude += rawAltitude;
    }
    groundAltitude = groundAltitude / 25.0;
  }
  
  void setGroundAltitude(float value) {
    groundAltitude = value;
  }
  
  const float getGroundAltitude(void) {
    return groundAltitude;
  }
  
  void setSmoothFactor(float value) {
    smoothFactor = value;
  }
  
  const float getSmoothFactor(void) {
    return smoothFactor;
  }
};

// ***********************************************************************
// ************************* BMP085 Subclass *****************************
// ***********************************************************************
class Altitude_AeroQuad_v2 : public Altitude {
// This sets up the BMP085 from Sparkfun
// Code from http://wiring.org.co/learning/libraries/bmp085.html
// Also made bug fixes based on BMP085 library from Jordi Munoz and Jose Julio
private:
  byte overSamplingSetting;
  int ac1, ac2, ac3;
  unsigned int ac4, ac5, ac6;
  int b1, b2, mb, mc, md;
  long pressure;
  long temperature;
  int altitudeAddress;
  long rawPressure, rawTemperature;
  byte select, pressureCount;
  float pressureFactor;
  
  void requestRawPressure(void) {
    updateRegisterI2C(altitudeAddress, 0xF4, 0x34+(overSamplingSetting<<6));
  }
  
  long readRawPressure(void) {
    unsigned char msb, lsb, xlsb;
    sendByteI2C(altitudeAddress, 0xF6);
    Wire.requestFrom(altitudeAddress, 3); // request three bytes
    while(!Wire.available()); // wait until data available
    msb = Wire.receive();
    while(!Wire.available()); // wait until data available
    lsb |= Wire.receive();
    while(!Wire.available()); // wait until data available
    xlsb |= Wire.receive();
    return (((long)msb<<16) | ((long)lsb<<8) | ((long)xlsb)) >>(8-overSamplingSetting);
  }

  void requestRawTemperature(void) {
    updateRegisterI2C(altitudeAddress, 0xF4, 0x2E);
  }
  
  unsigned int readRawTemperature(void) {
    sendByteI2C(altitudeAddress, 0xF6);
    return readWordWaitI2C(altitudeAddress);
  }

public: 
  Altitude_AeroQuad_v2() : Altitude(){
    altitudeAddress = 0x77;
    // oversampling setting
    // 0 = ultra low power
    // 1 = standard
    // 2 = high
    // 3 = ultra high resolution
    overSamplingSetting = 3;
    pressure = 0;
    groundPressure = 0;
    temperature = 0;
    groundTemperature = 0;
    groundAltitude = 0;
    pressureFactor = 1/5.255;
  }

  // ***********************************************************
  // Define all the virtual functions declared in the main class
  // ***********************************************************
  void initialize(void) {
    float verifyGroundAltitude;
    
    sendByteI2C(altitudeAddress, 0xAA);
    ac1 = readWordWaitI2C(altitudeAddress);
    sendByteI2C(altitudeAddress, 0xAC);
    ac2 = readWordWaitI2C(altitudeAddress);
    sendByteI2C(altitudeAddress, 0xAE);
    ac3 = readWordWaitI2C(altitudeAddress);
    sendByteI2C(altitudeAddress, 0xB0);
    ac4 = readWordWaitI2C(altitudeAddress);
    sendByteI2C(altitudeAddress, 0xB2);
    ac5 = readWordWaitI2C(altitudeAddress);
    sendByteI2C(altitudeAddress, 0xB4);
    ac6 = readWordWaitI2C(altitudeAddress);
    sendByteI2C(altitudeAddress, 0xB6);
    b1 = readWordWaitI2C(altitudeAddress);
    sendByteI2C(altitudeAddress, 0xB8);
    b2 = readWordWaitI2C(altitudeAddress);
    sendByteI2C(altitudeAddress, 0xBA);
    mb = readWordWaitI2C(altitudeAddress);
    sendByteI2C(altitudeAddress, 0xBC);
    mc = readWordWaitI2C(altitudeAddress);
    sendByteI2C(altitudeAddress, 0xBE);
    md = readWordWaitI2C(altitudeAddress);
    requestRawTemperature(); // setup up next measure() for temperature
    select = TEMPERATURE;
    pressureCount = 0;
    measure();
    delay(5); // delay for temperature
    measure();
    delay(26); // delay for pressure
    measureGround();
    // check if measured ground altitude is valid
    while (abs(getRawData() - getGroundAltitude()) > 10) {
      delay(26);
      measureGround();
    }
    setStartAltitude(getGroundAltitude());
  }
  
  void measure(void) {
    long x1, x2, x3, b3, b5, b6, p;
    unsigned long b4, b7;
    int32_t tmp;

    // switch between pressure and tempature measurements
    // each loop, since it's slow to measure pressure
    if (select == PRESSURE) {
      rawPressure = readRawPressure();
      if (pressureCount == 1) {
        requestRawTemperature();
        pressureCount = 0;
       select = TEMPERATURE;
      }
      else
        requestRawPressure();
      pressureCount++;
    }
    else { // select must equal TEMPERATURE
      rawTemperature = (long)readRawTemperature();
      requestRawPressure();
      select = PRESSURE;
    }
    
    //calculate true temperature
    x1 = ((long)rawTemperature - ac6) * ac5 >> 15;
    x2 = ((long) mc << 11) / (x1 + md);
    b5 = x1 + x2;
    temperature = ((b5 + 8) >> 4);
  
    //calculate true pressure
    b6 = b5 - 4000;
    x1 = (b2 * (b6 * b6 >> 12)) >> 11; 
    x2 = ac2 * b6 >> 11;
    x3 = x1 + x2;
    tmp = ac1;
    tmp = (tmp*4 + x3)<<overSamplingSetting;
    b3 = (tmp+2)/4;
    x1 = ac3 * b6 >> 13;
    x2 = (b1 * (b6 * b6 >> 12)) >> 16;
    x3 = ((x1 + x2) + 2) >> 2;
    b4 = (ac4 * (uint32_t) (x3 + 32768)) >> 15;
    b7 = ((uint32_t) rawPressure - b3) * (50000 >> overSamplingSetting);
    p = b7 < 0x80000000 ? (b7 * 2) / b4 : (b7 / b4) * 2;
    
    x1 = (p >> 8) * (p >> 8);
    x1 = (x1 * 3038) >> 16;
    x2 = (-7357 * p) >> 16;
    pressure = (p + ((x1 + x2 + 3791) >> 4));
    
    rawAltitude = 44330 * (1 - pow(pressure/101325.0, pressureFactor)); // returns absolute altitude in meters
    altitude = smooth(rawAltitude, altitude, smoothFactor); // smoothFactor defined in main class
    pressureBMP = pressure;
  }
};

/**********SCP1000*******************/
//Sensor's memory register addresses:
const int PRESSURESCP = 0x1F;      //3 most significant bits of pressure
const int PRESSURE_LSB = 0x20;  //16 least significant bits of pressure
const int TEMPERATURESCP = 0x21;   //16 bit temperature reading
const byte READ = 0b11111100;     // SCP1000's read command
const byte WRITE = 0b00000010;   // SCP1000's write command

#define DRDY 46
#define CS 44

//Read from or write to register from the SCP1000:
unsigned int readRegister(byte thisRegister, int bytesToRead ) {
  byte inByte = 0;           // incoming byte from the SPI
  unsigned int result = 0;   // result to return
  //Serial.print(thisRegister, BIN);
  //Serial.print("\t");
  // SCP1000 expects the register name in the upper 6 bits
  // of the byte. So shift the bits left by two bits:
  thisRegister = thisRegister << 2;
  // now combine the address and the command into one byte
  byte dataToSend = thisRegister & READ;
  //Serial.println(thisRegister, BIN);
  // take the chip select low to select the device:
  digitalWrite(CS, LOW);
  // send the device the register you want to read:
  SPI.transfer(dataToSend);
  // send a value of 0 to read the first byte returned:
  result = SPI.transfer(0x00);
  // decrement the number of bytes left to read:
  bytesToRead--;
  // if you still have another byte to read:
  if (bytesToRead > 0) {
    // shift the first byte left, then get the second byte:
    result = result << 8;
    inByte = SPI.transfer(0x00);
    // combine the byte you just got with the previous one:
    result = result | inByte;
    // decrement the number of bytes left to read:
    bytesToRead--;
  }
  // take the chip select high to de-select:
  digitalWrite(CS, HIGH);
  // return the result:
  return(result);
}


//Sends a write command to SCP1000

void writeRegister(byte thisRegister, byte thisValue) {

  // SCP1000 expects the register address in the upper 6 bits
  // of the byte. So shift the bits left by two bits:
  thisRegister = thisRegister << 2;
  // now combine the register address and the command into one byte:
  byte dataToSend = thisRegister | WRITE;

  // take the chip select low to select the device:
  digitalWrite(CS, LOW);

  SPI.transfer(dataToSend); //Send register location
  SPI.transfer(thisValue);  //Send value to record into register

  // take the chip select high to de-select:
  digitalWrite(CS, HIGH);
}


void initializeSCP1000(void) {
SPI.begin();
pinMode(DRDY, INPUT);
pinMode(CS, OUTPUT);
 //Configure SCP1000 for low noise configuration:
  writeRegister(0x02, 0x2D);
  writeRegister(0x01, 0x03);
  writeRegister(0x03, 0x02);
  // give the sensor time to set up:
  delay(100);
  //Select High Resolution Mode
  writeRegister(0x03, 0x0A);
  delay(100);
};

void readSCP1000(void) {
  writeRegister(0x03, 0x0A);
//Read the temperature data
    int tempData = readRegister(0x21, 2);

    // convert the temperature to celsius and display it:
    float realTemp = (float)tempData / 20.0;
    //Serial.print("Temp[C]=");
    //Serial.print(realTemp);


    //Read the pressure data highest 3 bits:
    byte  pressure_data_high = readRegister(0x1F, 1);
    pressure_data_high &= 0b00000111; //you only needs bits 2 to 0

    //Read the pressure data lower 16 bits:
    unsigned int pressure_data_low = readRegister(0x20, 2);
    //combine the two parts into one 19-bit number:
    long pressure = ((pressure_data_high << 16) | pressure_data_low)/4;

    // display the temperature:
    //Serial.println("\tPressure [Pa]=" + String(pressure));
    pressureSCP = pressure; //98000
};



float mergeBMPandSCP(void) {
//pressureBMP on table                = 101456
//pressureSCP on table                  = 3321
//pressureSCP with addition of 100000 = 103322
//pressureSCP with addition of  98000 = 
//filteredBMP
//filteredSCP
float tmp_float;
    tmp_float = (((filteredBMP*0.7)+((filteredSCP+98000)*0.3) )/101325.0);
    tmp_float = pow(tmp_float,0.190295);
    mergedBAROalt = (44330*(1.0-tmp_float))+80;
    
    return(mergedBAROalt);
};

