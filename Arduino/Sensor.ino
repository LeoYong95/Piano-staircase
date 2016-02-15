#include "Sensor.h"

Sensor * s1;
Sensor * s2;
Sensor * s3;
Sensor * s4;
Sensor * s5;
Sensor * s6;
Sensor * s7;


void setup() {
  // put your setup code here, to run once:
  s1 = new Sensor(22,2);
  s2 = new Sensor(24,3);
  s3 = new Sensor(26,4);
  s4 = new Sensor(28,5);
  s5 = new Sensor(30,6);
  s6 = new Sensor(32,7);
  s7 = new Sensor(34,8); 

  Serial.begin(115200); //this boud rate compatible with POSIX SERIAL
 
}

void loop() {
  //----ULTRASONIC SENSOR----
   Serial.begin(115200);
 
   unsigned long dist1 = s1->dist();
   unsigned long dist2 = s2->dist();
   unsigned long dist3 = s3->dist();  
   unsigned long dist4 = s4->dist();
   unsigned long dist5 = s5->dist();
   unsigned long dist6 = s6->dist();
   unsigned long dist7 = s7->dist();


  // put your main code here, to run repeatedly:
  Serial.print(dist1);
  Serial.print(",");
  Serial.print(dist2);
  Serial.print(",");
  Serial.print(dist3);
  Serial.print(",");
  Serial.print(dist4);
  Serial.print(",");
  Serial.print(dist5);
  Serial.print(",");
  Serial.print(dist6);
  Serial.print(",");
  Serial.print(dist7);
  Serial.print(",");
  Serial.print("\n");
  delay(100);
}
