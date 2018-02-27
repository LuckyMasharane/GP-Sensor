int IRpin = A0;
void setup()
{
Serial.begin(9600);
}

void loop()
{
int volts = analogRead(IRpin);
int distance =(2914/(volts + 5)-1);
Serial.println(distance);
delay(100);
}
