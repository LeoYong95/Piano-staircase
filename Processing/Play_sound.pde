//Auth: Loe Yong
//----Importing necessary libraries----
import processing.serial.*;
import ddf.minim.*;

//----Array to contain distance data----
float num;
String[] sdata;
float[] fdata;

//----Call player class----
Minim minim;
AudioPlayer player0, player1, player2, player3, player4, player5, player6; 
Player plyr0, plyr1, plyr2, plyr3, plyr4, plyr5, plyr6 ;

//----Call serial class----
Serial myPort;             // Create object from serial class
String val ;               // Data received from the serial port

void setup() 
{
//============================================Construct serial port====
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 115200);
//=================================================Load sound file to player====
  minim = new Minim(this);  
  player0 = minim.loadFile("piano-notes/newa.wav"); 
  player1 = minim.loadFile("piano-notes/newb.wav"); 
  player2 = minim.loadFile("piano-notes/newg.wav"); 
  player3 = minim.loadFile("piano-notes/newc1.wav"); 
  player4 = minim.loadFile("piano-notes/newd.wav"); 
  player5 = minim.loadFile("piano-notes/newe.wav"); 
  player6 = minim.loadFile("piano-notes/newf.wav"); 

//============================Construct player class====
  plyr0 = new Player(player0);
  plyr1 = new Player(player1);
  plyr2 = new Player(player2);
  plyr3 = new Player(player3);
  plyr4 = new Player(player4);
  plyr5 = new Player(player5);
  plyr6 = new Player(player6);
  
}

void draw()
{
  if ( myPort.available() > 0) {  		// If data is available,
    val = myPort.readStringUntil('\n');		// read it and store it in val
     
     if (val != null) {
      
      sdata = split(val, ",");       //Split Data
      fdata = float(sdata);          //Convert Data from String to Float
       
      }
    

//=============================Assign data for each player====    
    plyr1.Play(fdata[1]);
    plyr0.Play(fdata[0]);
    plyr2.Play(fdata[2]);
    plyr3.Play(fdata[3]);
    plyr4.Play(fdata[4]);
    plyr5.Play(fdata[5]);
    plyr6.Play(fdata[6]);
    
//===================Debugging purpose
    print(fdata[0]);
    print(",");
    print(fdata[1]);  
    print(",");
    print(fdata[2]);  
    print("\n");
 }
  

}
