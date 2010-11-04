
// Usage: define a global var such as  "CHR6DM chr6 ;" in Aeroquad.pde
// Values can then be read such as chr6.data.pitch and so on





// Null packet

     const int  NO_DATA                   = 0x00;
     const int  FAILED_CHECKSUM           = 0x01;

     int NO_DATA_PACKET[]          = {NO_DATA};
     int FAILED_CHECKSUM_PACKET[]  = {FAILED_CHECKSUM};

    // Client command packets
     const int  SET_ACTIVE_CHANNELS       =  0x80;
     const int  SET_SILENT_MODE           =  0x81;
     const int  SET_BROADCAST_MODE        =  0x82;
     const int  SET_GYRO_BIAS             =  0x83;
     const int  SET_ACCEL_BIAS            =  0x84;
     const int  SET_ACCEL_REF_VECTOR      =  0x85;
     const int  AUTO_SET_ACCEL_REF        =  0x86;
     const int  ZERO_RATE_GYROS           =  0x87;
     const int  SELF_TEST                 =  0x88;
     const int  SET_START_CAL             =  0x89;
     const int  SET_PROCESS_COVARIANCE    =  0x8A;
     const int  SET_MAG_COVARIANCE        =  0x8B;
     const int  SET_ACCEL_COVARIANCE      =  0x8C;
     const int  SET_EKF_CONFIG            =  0x8D;
     const int  SET_GYRO_ALIGNMENT        =  0x8E;
     const int  SET_ACCEL_ALIGNMENT       =  0x8F;
     const int  SET_MAG_REF_VECTOR        =  0x90;
     const int  AUTO_SET_MAG_REF          =  0x91;
     const int  SET_MAG_CAL               =  0x92;
     const int  SET_MAG_BIAS              =  0x93;
     const int  SET_GYRO_SCALE            =  0x94;
     const int  EKF_RESET                 =  0x95;
     const int  RESET_TO_FACTORY          =  0x96;
     const int  WRITE_TO_FLASH            =  0xA0;
     const int  GET_DATA                  =  0x01;
     const int  GET_ACTIVE_CHANNELS       =  0x02;
     const int  GET_BROADCAST_MODE        =  0x03;
     const int  GET_ACCEL_BIAS            =  0x04;
     const int  GET_ACCEL_REF_VECTOR      =  0x05;
     const int  GET_GYRO_BIAS             =  0x06;
     const int  GET_GYRO_SCALE            =  0x07;
     const int  GET_START_CAL             =  0x08;
     const int  GET_EKF_CONFIG            =  0x09;
     const int  GET_ACCEL_COVARIANCE      =  0x0A;
     const int  GET_MAG_COVARIANCE        =  0x0B;
     const int  GET_PROCESS_COVARIANCE    =  0x0C;
     const int  GET_STATE_COVARIANCE      =  0x0D;
     const int  GET_GYRO_ALIGNMENT        =  0x0E;
     const int  GET_ACCEL_ALIGNMENT       =  0x0F;
     const int  GET_MAG_REF_VECTOR        =  0x10;
     const int  GET_MAG_CAL               =  0x11;
     const int  GET_MAG_BIAS              =  0x12;

    // Board status and data packets
     const int  COMMAND_COMPLETE          =  0xB0;
     const int  COMMAND_FAILED            =  0xB1;
     const int  BAD_CHECKSUM              =  0xB2;
     const int  BAD_DATA_LENGTH           =  0xB3;
     const int  UNRECOGNIZED_PACKET       =  0xB4;
     const int  BUFFER_OVERFLOW           =  0xB5;
     const int  STATUS_REPORT             =  0xB6;
     const int  SENSOR_DATA               =  0xB7;
     const int  GYRO_BIAS_REPORT          =  0xB8;
     const int  GYRO_SCALE_REPORT         =  0xB9;
     const int  START_CAL_REPORT          =  0xBA;
     const int  ACCEL_BIAS_REPORT         =  0xBB;
     const int  ACCEL_REF_VECTOR_REPORT   =  0xBC;
     const int  ACTIVE_CHANNEL_REPORT     =  0xBD;
     const int  ACCEL_COVARIANCE_REPORT   =  0xBE;
     const int  MAG_COVARIANCE_REPORT     =  0xBF;
     const int  PROCESS_COVARIANCE_REPORT =  0xC0;
     const int  STATE_COVARIANCE_REPORT   =  0xC1;
     const int  EKF_CONFIG_REPORT         =  0xC2;
     const int  GYRO_ALIGNMENT_REPORT     =  0xC3;
     const int  ACCEL_ALIGNMENT_REPORT    =  0xC4;
     const int  MAG_REF_VECTOR_REPORT     =  0xC5;
     const int  MAG_CAL_REPORT            =  0xC6;
     const int  MAG_BIAS_REPORT           =  0xC7;
     const int  BROADCAST_MODE_REPORT     =  0xC8;


     const int  CHANNEL_YAW_MASK           = 1<<15;
     const int  CHANNEL_PITCH_MASK         = 1<<14;
     const int  CHANNEL_ROLL_MASK          = 1<<13;
     const int  CHANNEL_YAW_RATE_MASK      = 1<<12;
     const int  CHANNEL_PITCH_RATE_MASK    = 1<<11;
     const int  CHANNEL_ROLL_RATE_MASK     = 1<<10;
     const int  CHANNEL_MX_MASK            = 1<<9;
     const int  CHANNEL_MY_MASK            = 1<<8;
     const int  CHANNEL_MZ_MASK            = 1<<7;
     const int  CHANNEL_GX_MASK            = 1<<6;
     const int  CHANNEL_GY_MASK            = 1<<5;
     const int  CHANNEL_GZ_MASK            = 1<<4;
     const int  CHANNEL_AY_MASK            = 1<<3;
     const int  CHANNEL_AX_MASK            = 1<<2;
     const int  CHANNEL_AZ_MASK            = 1<<1;
     const int  CHANNEL_ALL_MASK           = 65535;


    // Scale factors
     const double SCALE_YAW        = 0.0109863; // °/LSB
     const double SCALE_PITCH      = 0.0109863;
     const double SCALE_ROLL       = 0.0109863;
     const double SCALE_YAW_RATE   = 0.0137329; // °/s/LSB
     const double SCALE_PITCH_RATE = 0.0137329;
     const double SCALE_ROLL_RATE  = 0.0137329;
     const double SCALE_MAG_X      = 0.0610350; // mGauss/LSB
     const double SCALE_MAG_Y      = 0.0610350;
     const double SCALE_MAG_Z      = 0.0610350;
     const double SCALE_GYRO_X     = 0.0181200; // °/s/LSB
     const double SCALE_GYRO_Y     = 0.0181200;
     const double SCALE_GYRO_Z     = 0.0181200;
     const double SCALE_ACCEL_X    = 0.1068120; // mg/LSB
     const double SCALE_ACCEL_Y    = 0.1068120;
     const double SCALE_ACCEL_Z    = 0.1068120;

    const char PACKET_HEADER[] = {'s','n','p'};
    const int HEADER_CHECKSUM = 's'+'n'+'p';


#include <Wire.h>




class Data{

public:
             bool yawEnabled;
             bool pitchEnabled;
             bool rollEnabled;
             bool yawRateEnabled;
             bool pitchRateEnabled;
             bool rollRateEnabled;
             bool mxEnabled;
             bool myEnabled;
             bool mzEnabled;
             bool gxEnabled;
             bool gyEnabled;
             bool gzEnabled;
             bool axEnabled;
             bool ayEnabled;
             bool azEnabled;

             double yaw;
             double pitch;
             double roll;
             double yawRate;
             double pitchRate;
             double rollRate;
             double mx;
             double my;
             double mz;
             double gx;
             double gy;
             double gz;
             double ax;
             double ay;
             double az;
        };


class Packet{

public:
    int* buffer;
    int lenght;

    Packet(int* buffer,int lenght){
        this->buffer = buffer;
        this->lenght = lenght;
    }

};

class CHR6DM {

public:


    CHR6DM(void){
        //Nothing here
    }



    Data data;

  void EKFReset() {
    sendPacket(EKF_RESET);
    waitForAck(1000);
  }

  void writeToFlash() {
        sendPacket(WRITE_TO_FLASH);
        waitForAck(5000);
  }


    Packet readPacket()  {

        if (!syncToHeader()){
            //Serial.println("Not synced to header");
            return Packet(NO_DATA_PACKET,1);
        }


        int packetType =  blockingRead();
        int dataBytes  =  blockingRead();

        int calculatedChecksum = HEADER_CHECKSUM + packetType + dataBytes;

        int  length = dataBytes+1;
        int buffer[length]; 
        buffer[0] = packetType;

        for (int i = 1; i <= dataBytes ;i++ ){
            buffer[i] = blockingRead() ;
            calculatedChecksum+=buffer[i];
        }

        int high =  blockingRead();
        int low =   blockingRead();

        int packetChecksum = bytesToSignedShort(high,low);

        if (calculatedChecksum!=packetChecksum) {
            //Serial.print("Bad checksum ");Serial.print(" calculated="); Serial.print(calculatedChecksum);Serial.print(" actual="); Serial.println(packetChecksum);
            return Packet(FAILED_CHECKSUM_PACKET,1);
        }

        return Packet(buffer,length);

    }
    
    int blockingRead(){
        int read=-1;

         long starttime = millis();
         while(read==-1 && (millis()-starttime)<100){
            read = Serial1.read();
            //Serial.println(read);
         }

         return read;
    }

    bool syncToHeader()  {
        while (Serial1.available()>0){
            if (blockingRead()==PACKET_HEADER[0] && blockingRead()==PACKET_HEADER[1] && blockingRead()==PACKET_HEADER[2] ) return true;
        }

        return false;
    }


     void resetToFactory()  {
        sendPacket(RESET_TO_FACTORY);
    }

     bool setActiveChannels(int channels)  {
        sendPacket(SET_ACTIVE_CHANNELS,(int[]){channels},1);
        return waitForAck(1000);
    }


     void setBroadCastMode(int x) {
        sendPacket(SET_BROADCAST_MODE,(int[]){x},1);
    }

     void sendPacket(int command)  {
        sendPacket(command,0,0);
    }

     void sendPacket(int command, int* bytes, int byteslength)  {

            int checksum = 0;
            int buffer[] = {'s','n','p',command,byteslength};
            int bufferlength=5;
            for (int i = 0; i < bufferlength; i++) {
                Serial1.write(buffer[i]);
                checksum+=buffer[i];
            }

            for (int i = 0; i < byteslength; i++) {
                Serial1.write(bytes[i]);
                checksum+=bytes[i];

            }

            Serial1.write(checksum>>8);
            Serial1.write(checksum);

    }

     bool requestAndReadPacket() {
        sendPacket(GET_DATA);
        return waitFor(SENSOR_DATA, 100);
     }


     bool waitFor(int command,int timeout) {

       long startTime = millis();
        while((millis()-startTime)<timeout){
            Packet packet  = readPacket();

            if (packet.buffer[0]>1){
                bool result = decodePacket(packet);

                if (packet.buffer[0]==command){
                    return result;
                } /*else {
                    Serial.println("Didnt get the expected.. looping");
                }
                */
            }

        }

        //Serial.println("Timed out !");
        return false;
    }

     bool decodePacket(Packet packet) {
        int index = 0;
        switch (packet.buffer[index++]) {
            case SENSOR_DATA: {

                int flags = bytesToSignedShort(packet.buffer[index++],packet.buffer[index++]);

                data.yawEnabled          = (flags & CHANNEL_YAW_MASK            ) == CHANNEL_YAW_MASK;
                data.pitchEnabled        = (flags & CHANNEL_PITCH_MASK          ) == CHANNEL_PITCH_MASK;
                data.rollEnabled         = (flags & CHANNEL_ROLL_MASK           ) == CHANNEL_ROLL_MASK;
                data.yawRateEnabled      = (flags & CHANNEL_YAW_RATE_MASK       ) == CHANNEL_YAW_RATE_MASK;
                data.pitchRateEnabled    = (flags & CHANNEL_PITCH_RATE_MASK     ) == CHANNEL_PITCH_RATE_MASK;
                data.rollRateEnabled     = (flags & CHANNEL_ROLL_RATE_MASK      ) == CHANNEL_ROLL_RATE_MASK;
                data.mxEnabled           = (flags & CHANNEL_MX_MASK             ) == CHANNEL_MX_MASK;
                data.myEnabled           = (flags & CHANNEL_MY_MASK             ) == CHANNEL_MY_MASK;
                data.mzEnabled           = (flags & CHANNEL_MZ_MASK             ) == CHANNEL_MZ_MASK;
                data.gxEnabled           = (flags & CHANNEL_GX_MASK             ) == CHANNEL_GX_MASK;
                data.gyEnabled           = (flags & CHANNEL_GY_MASK             ) == CHANNEL_GY_MASK;
                data.gzEnabled           = (flags & CHANNEL_GZ_MASK             ) == CHANNEL_GZ_MASK;
                data.axEnabled           = (flags & CHANNEL_AX_MASK             ) == CHANNEL_AX_MASK;
                data.ayEnabled           = (flags & CHANNEL_AY_MASK             ) == CHANNEL_AY_MASK;
                data.azEnabled           = (flags & CHANNEL_AZ_MASK             ) == CHANNEL_AZ_MASK;


                if (data.yawEnabled          ){ data.yaw          = SCALE_YAW           * bytesToSignedShort(packet.buffer[index++],packet.buffer[index++]); }
                if (data.pitchEnabled        ){ data.pitch        = SCALE_PITCH         * bytesToSignedShort(packet.buffer[index++],packet.buffer[index++]); }
                if (data.rollEnabled         ){ data.roll         = SCALE_ROLL          * bytesToSignedShort(packet.buffer[index++],packet.buffer[index++]); }
                if (data.yawRateEnabled      ){ data.yawRate      = SCALE_YAW_RATE      * bytesToSignedShort(packet.buffer[index++],packet.buffer[index++]); }
                if (data.pitchRateEnabled    ){ data.pitchRate    = SCALE_PITCH_RATE    * bytesToSignedShort(packet.buffer[index++],packet.buffer[index++]); }
                if (data.rollRateEnabled     ){ data.rollRate     = SCALE_ROLL_RATE     * bytesToSignedShort(packet.buffer[index++],packet.buffer[index++]); }
                if (data.mxEnabled           ){ data.mx           = SCALE_MAG_X         * bytesToSignedShort(packet.buffer[index++],packet.buffer[index++]); }
                if (data.myEnabled           ){ data.my           = SCALE_MAG_Y         * bytesToSignedShort(packet.buffer[index++],packet.buffer[index++]); }
                if (data.mzEnabled           ){ data.mz           = SCALE_MAG_Z         * bytesToSignedShort(packet.buffer[index++],packet.buffer[index++]); }
                if (data.gxEnabled           ){ data.gx           = SCALE_GYRO_X        * bytesToSignedShort(packet.buffer[index++],packet.buffer[index++]); }
                if (data.gyEnabled           ){ data.gy           = SCALE_GYRO_Y        * bytesToSignedShort(packet.buffer[index++],packet.buffer[index++]); }
                if (data.gzEnabled           ){ data.gz           = SCALE_GYRO_Z        * bytesToSignedShort(packet.buffer[index++],packet.buffer[index++]); }
                if (data.axEnabled           ){ data.ax           = SCALE_ACCEL_X       * bytesToSignedShort(packet.buffer[index++],packet.buffer[index++]); }
                if (data.ayEnabled           ){ data.ay           = SCALE_ACCEL_Y       * bytesToSignedShort(packet.buffer[index++],packet.buffer[index++]); }
                if (data.azEnabled           ){ data.az           = SCALE_ACCEL_Z       * bytesToSignedShort(packet.buffer[index++],packet.buffer[index++]); }

                if (index!=packet.lenght){
                    //TODO - Raise error
                    Serial.println("Recevied pad length packet!");
                }


                return true;}
            case STATUS_REPORT:
                 Serial.println("Received status report");
                 return true;
            case BAD_CHECKSUM:
                 Serial.println("CHR6DM reported bad checksum!");
                 return true;
            case NO_DATA:
            case FAILED_CHECKSUM:
                 return false;
            case COMMAND_COMPLETE:
                Serial.println("COMMAND_COMPLETE");
                return true;
            case COMMAND_FAILED:
                Serial.println("COMMAND_FAILED");
                return false;
            default:
                Serial.print("Received unknown packet ");
                Serial.println(packet.buffer[0]);
                return false;

        }
    }


     bool selfTest(){
        sendPacket(SELF_TEST);
        return waitFor(STATUS_REPORT,1000);
    }

    int bytesToSignedShort(int high, int low) {
        return word(high,low);
    }

    bool setListenMode() {
        sendPacket(SET_SILENT_MODE);
        return waitForAck(10000);
    }

    bool waitForAck(int timeout) {

        long startTime = millis();
        while(millis()-startTime<timeout){
        int command=readPacket().buffer[0];
            switch(command){
                case COMMAND_COMPLETE :
                    return true;
                case COMMAND_FAILED:
                    break;
                case NO_DATA:
                    break;
                default:
                  //Serial.print("Unexcepted packet, waiting for ack:"); Serial.println(command);
                  break;
            }
        }

        //Serial.println("Timed out!");
        return false;
    }



};
