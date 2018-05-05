import processing.serial.*;
String val;
int x;
float xf;

  Serial myPort;        // The serial port
  
void setup()
{
 size(400, 400);
 frameRate(60);
 
  // I know that the first port in the serial list on my mac
  // is Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  String portName = "COM9"; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
  

}
void draw()
{
  background(255,255,255);
  if ( myPort.available() > 0) 
  {  // If data is available,
  val = myPort.readStringUntil('\n');         // read it and store it in val
  } 


if (val==null)
{
  val = "0";
  println("val = null");
}




//x = Integer.parseInt(val); 
xf = float(val);
xf = xf - 300;
println(xf); //print it out in the console



rect(50, 200, 60, xf);

}