// https://github.com/francesco-scar/LiquidCrystal_Software_I2C
// Based on https://github.com/johnrickman/LiquidCrystal_I2C project

#include <LiquidCrystal_Software_I2C.h>     // Include library

LiquidCrystal_I2C lcd(0x3f, 16, 2, 3, 4);   // Set the LCD address to 0x27 for a 16 chars and 2 line display

void setup() {
  lcd.init();                               // LCD initialization
  lcd.backlight();                          // Turn on backlight
  lcd.print("Hello, world!");               // Print Hello, world!
}

void loop() {
}
