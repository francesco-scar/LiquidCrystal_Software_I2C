// https://github.com/francesco-scar/LiquidCrystal_Software_I2C
// Based on https://github.com/johnrickman/LiquidCrystal_I2C project

#include <LiquidCrystal_Software_I2C.h>     // Include library

// Usage: LiquidCrystal_I2C lcd(ADDRESS, COLUMNS, ROWS, SDA_PIN, SCL_PIN);
LiquidCrystal_I2C lcd(0x3f, 16, 2, 3, 4);   // Set the LCD address to 0x27 for a 16 chars and 2 line display

uint8_t bell[8]  = {                        // Bell icon, each 1 correspond to ON pixel of the 5x8 dot matrix per char and each 0 to OFF pixel
  B00100,                                   //     ##    
  B01110,                                   //   ######  
  B01110,                                   //   ######  
  B01110,                                   //   ######  
  B11111,                                   // ##########
  B00000,                                   //           
  B00100,                                   //     ##    
  B00000                                    //           
};
uint8_t note[8]  = {                        // Note icon, each 1 correspond to ON pixel of the 5x8 dot matrix per char and each 0 to OFF pixel
  B00010,                                   //       ##  
  B00011,                                   //       ####
  B00010,                                   //       ##   
  B00010,                                   //       ##  
  B01110,                                   //   ######  
  B11110,                                   // ########  
  B11110,                                   // ########  
  B01100                                    //   ####    
};
uint8_t heart[8] = {                        // Heart icon, each 1 correspond to ON pixel of the 5x8 dot matrix per char and each 0 to OFF pixel
  B00000,                                   //           
  B01010,                                   //   ##  ##  
  B11111,                                   // ##########
  B11111,                                   // ##########
  B01110,                                   //   ######  
  B00100,                                   //     ##    
  B00000,                                   //           
  B00000                                    //           
};


void setup() {
  lcd.init();                               // LCD initialization
  lcd.backlight();                          // Turn on backlight
  
  lcd.createChar(0, bell);                  // Create char (and save it to LCD memory in address 0) corresponding to matrix bell
  lcd.createChar(1, note);                  // Create char (and save it to LCD memory in address 1) corresponding to matrix note
  lcd.createChar(2, heart);                 // Create char (and save it to LCD memory in address 2) corresponding to matrix heart

  lcd.clear();                              // Clear the screen and set cursor to home
  lcd.print("Bell: ");                      // Print text
  lcd.write(0);                             // Print bell icon, previously saved in address 0
  lcd.setCursor(9, 0);                      // Move cursor
  lcd.print("Note: ");                      // Print text
  lcd.write(1);                             // Print note icon, previously saved in address 1
  lcd.setCursor(4, 1);                      // Move cursor
  lcd.print("Heart: ");                     // Print text
  lcd.write(2);                             // Print heart icon, previously saved in address 2
}

void loop() {
}
