void setup() {
  flightCommmand.init(type, frequency); //type = PWM, serial
  motorCommand.init(config, type, frequency); //config = +,X,octo  type = PWM,I2C
  attitudeSensor.init(frequency);
  cameraStabilization.init(frequency);
  GPS.init(frequency);
  videoDisplay.init(frequency);
  lightPattern.init(frequency);
  batteryMonitor.init(frequency);
  remoteCommand.init(frequency);
  telemetry.init(frequency);
  
  filter.init(param);
}

void loop() {
  if (flightCommand.process()) {
    rawCommand.throttle = flightCommand.read(THROTTLE);
    rawCommand.roll = flightCommand.read(ROLL);
    rawCommand.pitch = flightCommand.read(PITCH);
    rawCommand.yaw = flightCommand.read(YAW);
    command = filter(rawCommand);
    switch(flightCommand.check()) {
      case CALIBRATE:
        angleSensor.calibrate();
        rateSensor.calibrate();
        altitudeSensor.calibrate();
        break;
      case ARM:
        motor.arm();
        break;
      case DISARM:
        motor.disarm();
        break;
      default:
        break;
    }
  }

  if (GPS.process()) {
    attitude.longitude = GPS.read(LONGITUDE);
    attitude.latitude = GPS.read(LATITUDE);
    attitude.altitudeGPS = GPS.read(ALTITUDE);
  }
  
  if (attitudeSensor.process()) {
    rawAttitude.rate = attitudeSensor.read(RATE);
    rawAattitude.angle = attitudeSensor.read(ANGLE);
    rawAattitude.altitudeSensor = attitudeSensor.read(ALTITUDE);
    rawAattitude.heading = attitudeSensor.read(HEADING);
    
    attitude = filter(rawAttitude);
    direction = flightControl.calculateAttitude(command, attitude);
  }
  
  if (motorCommand.process()) {
    motorCommand.throttle(direction);
    switch(motorCommand.type()) {
      case: PLUS
        motorCommand.write(FRONT, direction);
        motorCommand.write(REAR, direction);
        motorCommand.write(LEFT, direction);
        motorCommand.write(RIGHT, direction);
        break;
      case: X
        motorCommand.write(FRONTLEFT, direction);
        motorCommand.write(FRONTRIGHT, direction);
        motorCommand.write(REARLEFT, direction);
        motorCommand.write(REARRIGHT, direction);
        break;
      case: OCTO
        motorCommand.write(FRONT, direction);
        motorCommand.write(REAR, direction);
        motorCommand.write(LEFT, direction);
        motorCommand.write(RIGHT, direction);
        motorCommand.write(FRONTLEFT, direction);
        motorCommand.write(FRONTRIGHT, direction);
        motorCommand.write(REARLEFT, direction);
        motorCommand.write(REARRIGHT, direction);
        break;
      case: HEXA
        motorCommand.write(FRONTLEFT, direction);
        motorCommand.write(LEFT, direction);
        motorCommand.write(REARLEFT, direction);
        motorCommand.write(FRONTRIGHT, direction);
        motorCommand.write(RIGHT, direction);
        motorCommand.write(REARRIGHT, direction);
      default:
        break;
    }
  }
  
  if (cameraStabilization.process()) {
    cameraStabilization.write(ROLL, attitude.roll);
    cameraStabilization.write(PITCH, attitude.pitch);
  }
  
  if (batteryMonitor.process()) {
    batteryState = batteryMonitor.read();
    batteryMonitor.alarm(batteryState);
  }
  
  if (videoDisplay.process()) {
    videoDisplay.write(attitude, batteryState);
  }
  
  if (lightPattern.process()) {
    lightPattern.write();
  }
  
  if (remoteCommand.process()) {
    cmd = remoteCommand.read();
    remoteCommand.execute(cmd);
  }
  
  if (telemetry.process()) {
    telemetry.write();
  }
}
