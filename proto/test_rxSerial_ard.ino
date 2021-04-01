
char val;
int led = LED_BUILTIN;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(19200);
  pinMode(led, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  
  if(Serial.available())
    val = Serial.read();

  if (val == '1') digitalWrite(led, HIGH);
  else digitalWrite(led, LOW);

  delay(500);


  /* Tx to Serial Port (example 1)
  Serial.println("Hello");
  delay(500);
  */
}
