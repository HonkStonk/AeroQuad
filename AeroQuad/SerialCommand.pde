/*
  AeroQuad v1.3 - September 2009
  www.AeroQuad.info
  Copyright (c) 2009 Ted Carancho.  All rights reserved.
  An Open Source Arduino based quadrocopter.
 
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

void readSerialCommand() {
  // Check for serial message
  if (Serial.available()) {
    digitalWrite(LEDPIN, LOW);
    queryType = Serial.read();
    switch (queryType) {
    case 'A': // Receive roll and pitch gyro PID
      PID[ROLL].P = readFloatSerial();
      PID[ROLL].I = readFloatSerial();
      PID[ROLL].D = readFloatSerial();
      PID[ROLL].lastPosition = 0;
      PID[ROLL].integratedError = 0;
      PID[PITCH].P = readFloatSerial();
      PID[PITCH].I = readFloatSerial();
      PID[PITCH].D = readFloatSerial();
      PID[PITCH].lastPosition = 0;
      PID[PITCH].integratedError = 0;
      break;
    case 'C': // Receive yaw PID
      PID[YAW].P = readFloatSerial();
      PID[YAW].I = readFloatSerial();
      PID[YAW].D = readFloatSerial();
      PID[YAW].lastPosition = 0;
      PID[YAW].integratedError = 0;
      break;
    case 'E': // Receive roll and pitch auto level PID
      PID[LEVELROLL].P = readFloatSerial();
      PID[LEVELROLL].I = readFloatSerial();
      PID[LEVELROLL].D = readFloatSerial();
      PID[LEVELROLL].lastPosition = 0;
      PID[LEVELROLL].integratedError = 0;
      PID[LEVELPITCH].P = readFloatSerial();
      PID[LEVELPITCH].I = readFloatSerial();
      PID[LEVELPITCH].D = readFloatSerial();
      PID[LEVELPITCH].lastPosition = 0;
      PID[LEVELPITCH].integratedError = 0;
      break;
    case 'G': // Receive auto level configuration
      levelLimit = readFloatSerial();
      levelOff = readFloatSerial();
      break;
    case 'I': // Receive flight control configuration
      windupGuard = readFloatSerial();
      xmitFactor = readFloatSerial();
      break;
    case 'K': // Receive data filtering values
      smoothFactor[GYRO] = readFloatSerial();
      smoothFactor[ACCEL] = readFloatSerial();
      timeConstant = readFloatSerial();
      break;
    case 'M': // Receive motor smoothing values
      smoothTransmitter[ROLL] = readFloatSerial();
      smoothTransmitter[PITCH] = readFloatSerial();
      smoothTransmitter[YAW] = readFloatSerial();
      smoothTransmitter[THROTTLE] = readFloatSerial();
      smoothTransmitter[MODE] = readFloatSerial();
      smoothTransmitter[AUX] = readFloatSerial();
      break;
    case 'O': // Received transmitter calibrtion values
      mTransmitter[THROTTLE] = readFloatSerial();
      bTransmitter[THROTTLE] = readFloatSerial();
      mTransmitter[ROLL] = readFloatSerial();
      bTransmitter[ROLL] = readFloatSerial();
      mTransmitter[PITCH] = readFloatSerial();
      bTransmitter[PITCH] = readFloatSerial();
      mTransmitter[YAW] = readFloatSerial();
      bTransmitter[YAW] = readFloatSerial();
      mTransmitter[MODE] = readFloatSerial();
      bTransmitter[MODE] = readFloatSerial();
      mTransmitter[AUX] = readFloatSerial();
      bTransmitter[AUX] = readFloatSerial();
      break;
    case 'W': // Write all user configurable values to EEPROM
      writeFloat(PID[ROLL].P, PGAIN_ADR);
      writeFloat(PID[ROLL].I, IGAIN_ADR);
      writeFloat(PID[ROLL].D, DGAIN_ADR);
      writeFloat(PID[PITCH].P, PITCH_PGAIN_ADR);
      writeFloat(PID[PITCH].I, PITCH_IGAIN_ADR);
      writeFloat(PID[PITCH].D, PITCH_DGAIN_ADR);
      writeFloat(PID[LEVELROLL].P, LEVEL_PGAIN_ADR);
      writeFloat(PID[LEVELROLL].I, LEVEL_IGAIN_ADR);
      writeFloat(PID[LEVELROLL].D, LEVEL_DGAIN_ADR);
      writeFloat(PID[LEVELPITCH].P, LEVEL_PITCH_PGAIN_ADR);
      writeFloat(PID[LEVELPITCH].I, LEVEL_PITCH_IGAIN_ADR);
      writeFloat(PID[LEVELPITCH].D, LEVEL_PITCH_DGAIN_ADR);
      writeFloat(PID[YAW].P, YAW_PGAIN_ADR);
      writeFloat(PID[YAW].I, YAW_IGAIN_ADR);
      writeFloat(PID[YAW].D, YAW_DGAIN_ADR);
      writeFloat(windupGuard, WINDUPGUARD_ADR);  
      writeFloat(levelLimit, LEVELLIMIT_ADR);   
      writeFloat(levelOff, LEVELOFF_ADR); 
      writeFloat(xmitFactor, XMITFACTOR_ADR);
      writeFloat(smoothFactor[GYRO], GYROSMOOTH_ADR);
      writeFloat(smoothFactor[ACCEL], ACCSMOOTH_ADR);
      writeFloat(smoothTransmitter[THROTTLE], THROTTLESMOOTH_ADR);
      writeFloat(smoothTransmitter[ROLL], ROLLSMOOTH_ADR);
      writeFloat(smoothTransmitter[PITCH], PITCHSMOOTH_ADR);
      writeFloat(smoothTransmitter[YAW], YAWSMOOTH_ADR);
      writeFloat(timeConstant, FILTERTERM_ADR);
      writeFloat(mTransmitter[THROTTLE], THROTTLESCALE_ADR);
      writeFloat(bTransmitter[THROTTLE], THROTTLEOFFSET_ADR);
      writeFloat(mTransmitter[ROLL], ROLLSCALE_ADR);
      writeFloat(bTransmitter[ROLL], ROLLOFFSET_ADR);
      writeFloat(mTransmitter[PITCH], PITCHSCALE_ADR);
      writeFloat(bTransmitter[PITCH], PITCHOFFSET_ADR);
      writeFloat(mTransmitter[YAW], YAWSCALE_ADR);
      writeFloat(bTransmitter[YAW], YAWOFFSET_ADR);
      writeFloat(mTransmitter[MODE], MODESCALE_ADR);
      writeFloat(bTransmitter[MODE], MODEOFFSET_ADR);
      writeFloat(mTransmitter[AUX], AUXSCALE_ADR);
      writeFloat(bTransmitter[AUX], AUXOFFSET_ADR);
      zeroIntegralError();
      // Complementary filter setup
      configureFilter(timeConstant);
      break;
    case 'Y': // Initialize EEPROM with default values
      if (PID[ROLL].P == 0) PID[ROLL].P = 3.0;
      if (PID[PITCH].P == 0) PID[PITCH].P = 3.0;
      if (PID[YAW].P == 0) PID[YAW].P = 10.0;
      if (smoothFactor[GYRO] == 0) smoothFactor[GYRO] = 0.20;
      if (smoothFactor[ACCEL] == 0) smoothFactor[ACCEL] = 0.20;
      if (timeConstant == 0) timeConstant = 5.0;  
      if (windupGuard == 0) windupGuard = 2000.0;
      if (xmitFactor == 0) xmitFactor = 0.20;  
      if (levelLimit == 0) levelLimit = 2000.0;
      if (levelOff == 0) levelOff = 50;  
      if (accelZero[ROLL] == 0) {
        zeroGyros();
        zeroAccelerometers();
        zeroIntegralError();
      }
  
      // Will implement this properly in next version of Configurator
      // For now, force all values to 1
      smoothTransmitter[THROTTLE] = 1.0;
      smoothTransmitter[ROLL] = 1.0;
      smoothTransmitter[PITCH] = 1.0;
      smoothTransmitter[YAW] = 1.0;  
      smoothTransmitter[MODE] = 1.0;
      smoothTransmitter[AUX] = 1.0;
      break;
    }
  digitalWrite(LEDPIN, HIGH);
  }
}

// Used to read floating point values from the serial port
float readFloatSerial() {
  byte index = 0;
  byte timeout = 0;
  char data[128] = "";

  do {
    if (Serial.available() == 0) {
      delay(10);
      timeout++;
    }
    else {
      data[index] = Serial.read();
      timeout = 0;
      index++;
    }
  }  while ((data[limitRange(index-1, 0, 128)] != ';') && (timeout < 5) && (index < 128));
  return atof(data);
}
