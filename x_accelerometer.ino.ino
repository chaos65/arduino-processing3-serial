// define variables

float acc_x;

const int pin_x = 2;
const int pin_y = 1;
const int pin_z = 0;

void setup() {
  // put your setup code here, to run once:

Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:

delay(25);

acc_x = analogRead(pin_x);
//acc_y = analogRead(pin_y);
//acc_z = analogRead(pin_z);

Serial.println(acc_x);

}

