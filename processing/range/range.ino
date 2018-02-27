int IRpin = A0;
void setup() {
  // initialize the serial communication:
  Serial.begin(9600);
}

void loop() {
int volts=analogRead(IRpin);
int distance =(2914/(volts - 3));
Serial.println(distance);
  delay(500);
}

