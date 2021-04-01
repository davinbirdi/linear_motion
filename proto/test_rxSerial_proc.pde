import processing.serial.*;


Serial myPort;
String val;
char send;

void setup()
{
  printArray(Serial.list());
  String portname = Serial.list()[2];
  myPort = new Serial(this, portname, 19200);
  
  size(200, 200);
}

void draw() {
  
  /* Tx to Serial Port */
  if (mousePressed == true) send = '1';
  else send = '0';
  
  myPort.write(send);
  
  println(send);
  delay(500);
  
  
  
  
  /* Rx from Serial Port (example 1)
  if (myPort.available() > 0){
    val = myPort.readStringUntil('o');
  }
  println(val);
  
  //delay(500);
  */
}
