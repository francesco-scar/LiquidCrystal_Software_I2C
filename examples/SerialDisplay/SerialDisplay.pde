// https://github.com/francesco-scar/LiquidCrystal_Software_I2C
// Based on https://github.com/johnrickman/LiquidCrystal_I2C project

#include <LiquidCrystal_Software_I2C.h>     // Include library

// Usage: LiquidCrystal_I2C lcd(ADDRESS, COLUMNS, ROWS, SDA_PIN, SCL_PIN);
LiquidCrystal_I2C lcd(0x3f, 16, 2, 3, 4);   // Set the LCD address to 0x27 for a 16 chars and 2 line display

void setup() {
  lcd.init();                               // LCD initialization
  lcd.backlight();                          // Turn on backlight
  Serial.begin(9600);                       // Initialize serial comunication with baudrate of 9600
}

void loop() {
  if (Serial.available()) {                 // Chech if there are chars in serial buffer
    delay(250);                             // Wait to receive all chars
    lcd.clear();                            // Clear the LCD
    while (Serial.available() > 0) {        // Read all chars in serial buffer
      char c = Serial.read();               // Read one char at the time
      if (c != '\n' && c != '\r') {         // Avoid print newline and carriage return chars 
        lcd.write(c);                       // Print the char to LCD
      }
    }
  }
}
