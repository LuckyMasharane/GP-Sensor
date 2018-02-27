
 import processing.serial.*;
 
 Serial myPort;       
 int xPos = 1;         
 
 void setup () {
 // set the window size:
 size(400, 300);        
textFont(createFont("Georgia", 36));
 // List all the available serial ports
 println(Serial.list());
 myPort = new Serial(this, Serial.list()[0], 9600);
 myPort.bufferUntil('\n');
 background(0);
 }
 void draw () {
 }
 
 void serialEvent (Serial myPort) 
 {
 String inString = myPort.readStringUntil('\n');
  textSize(14);
 if (inString != null)
 {
     inString = trim(inString); 
     background(0);
    text("distance: " +inString+" cm",20,20);
    fill(255);
    
 }
 }
 


