// Test code to Write and Read packets from DataFlash log memory
// Packets : Attitude and GPS

#define HEAD_BYTE1 0xA3
#define HEAD_BYTE2 0x95
#define END_BYTE   0xBA

#define LOG_ATTITUDE_MSG 0x01
#define LOG_GPS_MSG      0x02
#define LOG_RADIO_MSG    0x03

// Write an attitude packet. Total length : 10 bytes
void Log_Write_Attitude(int log_roll, int log_pitch, int log_yaw)
{
  DataFlash.WriteByte(HEAD_BYTE1);
  DataFlash.WriteByte(HEAD_BYTE2);
  DataFlash.WriteByte(LOG_ATTITUDE_MSG);
  DataFlash.WriteInt(log_roll);
  DataFlash.WriteInt(log_pitch);
  DataFlash.WriteInt(log_yaw);
  DataFlash.WriteByte(END_BYTE);
}

// Write an GPS packet. Total length : 30 bytes
void Log_Write_GPS(long log_Time, long log_Lattitude, long log_Longitude, long log_Altitude, 
                  long log_Ground_Speed, long log_Ground_Course, byte log_Fix, byte log_NumSats)
{
  DataFlash.WriteByte(HEAD_BYTE1);
  DataFlash.WriteByte(HEAD_BYTE2);
  DataFlash.WriteByte(LOG_GPS_MSG);
  DataFlash.WriteLong(log_Time);
  DataFlash.WriteByte(log_Fix);
  DataFlash.WriteByte(log_NumSats);
  DataFlash.WriteLong(log_Lattitude);
  DataFlash.WriteLong(log_Longitude);
  DataFlash.WriteLong(log_Altitude);
  DataFlash.WriteLong(log_Ground_Speed);
  DataFlash.WriteLong(log_Ground_Course);
  DataFlash.WriteByte(END_BYTE);
}

// Write a Radio packet
void Log_Write_Radio(int ch1, int ch2, int ch3,int ch4, int ch5, int ch6)
{
  DataFlash.WriteByte(HEAD_BYTE1);
  DataFlash.WriteByte(HEAD_BYTE2);
  DataFlash.WriteByte(LOG_RADIO_MSG);
  DataFlash.WriteInt(ch1);
  DataFlash.WriteInt(ch2);
  DataFlash.WriteInt(ch3);
  DataFlash.WriteInt(ch4);
  DataFlash.WriteInt(ch5);
  DataFlash.WriteInt(ch6);
  DataFlash.WriteByte(END_BYTE);
}

// Read an attitude packet
void Log_Read_Attitude()
{  
  int log_roll;
  int log_pitch;
  int log_yaw;

  log_roll = DataFlash.ReadInt();
  log_pitch = DataFlash.ReadInt();
  log_yaw = DataFlash.ReadInt(); 
  Serial.print("ATT:");
  Serial.print(log_roll);
  Serial.print(",");
  Serial.print(log_pitch);
  Serial.print(",");
  Serial.print(log_yaw);
  Serial.println();
}

// Read a GPS packet
void Log_Read_GPS()
{
  long log_Time;
  byte log_Fix;
  byte log_NumSats;
  long log_Lattitude;
  long log_Longitude;
  long log_Altitude;
  long log_Ground_Speed;
  long log_Ground_Course;
 
  log_Time = DataFlash.ReadLong();
  log_Fix = DataFlash.ReadByte();
  log_NumSats = DataFlash.ReadByte();
  log_Lattitude = DataFlash.ReadLong();
  log_Longitude = DataFlash.ReadLong();
  log_Altitude = DataFlash.ReadLong();
  log_Ground_Speed = DataFlash.ReadLong();
  log_Ground_Course = DataFlash.ReadLong();

  Serial.print("GPS:");
  Serial.print(log_Time);
  Serial.print(",");
  Serial.print((int)log_Fix);
  Serial.print(",");
  Serial.print((int)log_NumSats);
  Serial.print(",");
  Serial.print(log_Lattitude);
  Serial.print(",");
  Serial.print(log_Longitude);
  Serial.print(",");
  Serial.print(log_Altitude);
  Serial.print(",");
  Serial.print(log_Ground_Speed);
  Serial.print(",");
  Serial.print(log_Ground_Course);
  Serial.println();

}

// Read an Radio packet
void Log_Read_Radio()
{  
  Serial.print("RADIO:");
  Serial.print(DataFlash.ReadInt());
  Serial.print(",");
  Serial.print(DataFlash.ReadInt());
  Serial.print(",");
  Serial.print(DataFlash.ReadInt());
  Serial.print(",");
  Serial.print(DataFlash.ReadInt());
  Serial.print(",");
  Serial.print(DataFlash.ReadInt());
  Serial.print(",");
  Serial.print(DataFlash.ReadInt());
  Serial.println();
}

// Read the DataFlash log memory : Packet Parser
void Log_Read(int start_page, int end_page)
{
  byte data;
  byte log_step=0;
  int packet_count=0; 

  DataFlash.StartRead(start_page);
  while (DataFlash.GetPage() < end_page)
    {
    data = DataFlash.ReadByte();
    switch(log_step)     //This is a state machine to read the packets
      {
      case 0:  
        if(data==HEAD_BYTE1)  // Head byte 1
          log_step++;
        break; 
      case 1:
        if(data==HEAD_BYTE2)  // Head byte 2
          log_step++;
        break; 
      case 2:
        switch (data)
          {
          case LOG_ATTITUDE_MSG:
            Log_Read_Attitude();
            log_step++;
            break;
          case LOG_GPS_MSG:
            Log_Read_GPS();
            log_step++;
            break;
          case LOG_RADIO_MSG:
            Log_Read_Radio();
            log_step++;
            break;
          default:
            Serial.print("Error Reading Packet: ");
            Serial.print(packet_count); 
            log_step=0;   // Restart, we have a problem...
          }
        break;
      case 3:
        if(data==END_BYTE)
           packet_count++;
        else
           Serial.println("Error Reading END_BYTE");
        log_step=0;      // Restart sequence: new packet...        
      }
    }
  Serial.print("Number of packets read: ");
  Serial.println(packet_count);
}


