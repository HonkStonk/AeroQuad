/*
  AeroQuad v1.8 - June 2010
  www.AeroQuad.com
  Copyright (c) 2010 Ted Carancho.  All rights reserved.
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

// This class is responsible for calculating vehicle attitude

class FlightAngle_CompFilter {
private:
  float dt;
  float previousAngle;
  float newAngle;
  float newRate;
  float filterTerm0;
  float filterTerm1;
  float filterTerm2;
  float timeConstantCF;

public:
  FlightAngle_CompFilter() {
    dt = 0;
    filterTerm0 = 0;
    filterTerm1 = 0;
  }
  
  void initialize(byte axis) {
    previousAngle = accel.angleDeg(axis);
    filterTerm2 = gyro.rateDegPerSec(axis);
    dt = AIdT;
    timeConstantCF = timeConstant; // timeConstant is a global variable read in from EEPROM
    // timeConstantCF should have been read in from set method, but needed common way for CF and KF to be initialized
    // Will take care of better OO implementation in future revision
  }
  
  float calculate(float newAngle, float newRate) {
    // Written by RoyLB at http://www.rcgroups.com/forums/showpost.php?p=12082524&postcount=1286    
    filterTerm0 = (newAngle - previousAngle) * timeConstant *  timeConstantCF;
    filterTerm2 += filterTerm0 * dt;
    filterTerm1 = filterTerm2 + (newAngle - previousAngle) * 2 *  timeConstantCF + newRate;
    previousAngle = (filterTerm1 * dt) + previousAngle;
    return previousAngle; // This is actually the current angle, but is stored for the next iteration
  }
};

class FlightAngle_KalmanFilter {
private:
    float x_angle, x_bias;
    float P_00, P_01, P_10, P_11;	
    float Q_angle, Q_gyro;
    float R_angle;
    float dt, y, S;
    float K_0, K_1;

public:
  FlightAngle_KalmanFilter() {
    x_angle = 0;
    x_bias = 0;
    P_00 = 0;
    P_01 = 0;
    P_10 = 0;
    P_11 = 0;
  }
  
  void initialize(byte axis) {
    Q_angle = 0.001;
    Q_gyro = 0.003;
    R_angle = 0.03;
    dt = AIdT;
  }
  
  float calculate(float newAngle, float newRate) {
    x_angle += dt * (newRate - x_bias);
    P_00 +=  - dt * (P_10 + P_01) + Q_angle * dt;
    P_01 +=  - dt * P_11;
    P_10 +=  - dt * P_11;
    P_11 +=  + Q_gyro * dt;
    
    y = newAngle - x_angle;
    S = P_00 + R_angle;
    K_0 = P_00 / S;
    K_1 = P_10 / S;
    
    x_angle +=  K_0 * y;
    x_bias  +=  K_1 * y;
    P_00 -= K_0 * P_00;
    P_01 -= K_0 * P_01;
    P_10 -= K_1 * P_00;
    P_11 -= K_1 * P_01;
    
    return x_angle;
  }
};

// Angle estimation routine by FabQuad
// http://aeroquad.com/showthread.php?p=3995#post3995
class FlightAngle_FabQuad {
private:
  float dT;
  float _aref;
  float _gyroScaleFactor;
  float accelComplement;
  float gyroAngle;
  float previousAngle;
  float currentAngle;
  float adjustment;
  float gyroMath;
  float accelMath;
  float accel_1g;

public:
  FlightAngle_FabQuad() {
    accelComplement = 0.005; // 0.005
    adjustment = 0.95; // 0.95
    previousAngle = 0;
    gyroAngle = 0;
    currentAngle = 0;
  }
  
  void initialize(float zAxis, float gyroScaleFactor, float AIdT) {
    dT = AIdT;
    _gyroScaleFactor = gyroScaleFactor;
    _aref = aref;
    
    gyroMath = _aref / _gyroScaleFactor * dT * (PI/2);
    accel_1g = zAxis;
    accelMath = 90.0 * (PI/4);
  }
  
  float calculate(int accelData, int gyroData) {
    gyroAngle  = previousAngle  + float((gyroData) / 1024.0 * gyroMath);
    currentAngle  = gyroAngle  * (1-accelComplement) + float(accelData) / accel_1g * accelMath * adjustment * accelComplement;
    previousAngle = currentAngle;
    return currentAngle;
  }
  
  void setAccelComplement(float data) {
    accelComplement = data;
  }
  
  void setFabQuadFilterAdustment(float data) {
    adjustment = data;
  }
    
};