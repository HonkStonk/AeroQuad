/*
  AeroQuad v1.4 - September 2009
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

#include "Motors.h"

void configureMotors() {
  frontMotor.attach(FRONTMOTORPIN);
  rearMotor.attach(REARMOTORPIN);
  rightMotor.attach(RIGHTMOTORPIN);
  leftMotor.attach(LEFTMOTORPIN);
}

void commandMotors() {
  frontMotor.write(motorCommand[FRONT]);
  rearMotor.write(motorCommand[REAR]);
  rightMotor.write(motorCommand[RIGHT]);
  leftMotor.write(motorCommand[LEFT]);
}

// Sends commands to all motors
void commandAllMotors(int motorCommand) {
  frontMotor.write(motorCommand);
  rearMotor.write(motorCommand);
  rightMotor.write(motorCommand);
  leftMotor.write(motorCommand);
}

void pulseMotors(byte quantity) {
  for (byte i = 0; i < quantity; i++) {      
    commandAllMotors(MINCOMMAND + 100);
    delay(250);
    commandAllMotors(MINCOMMAND);
    delay(250);
  }
}
