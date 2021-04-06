// https://github.com/francesco-scar/LiquidCrystal_Software_I2C
// Based on https://github.com/johnrickman/LiquidCrystal_I2C project

#include <LiquidCrystal_Software_I2C.h>                 // Include library

// Usage: LiquidCrystal_I2C lcd(ADDRESS, COLUMNS, ROWS, SDA_PIN, SCL_PIN);
LiquidCrystal_I2C lcd(0, 0, 0, 3, 4);                   // Just SDA and SCL pins are needed to find the addresses

uint8_t resultArray[128];                               // This array will contain valid addresses found on the bus

void setup() {
  Serial.begin(9600);                                   // Initialize serial comunication
  delay(2000);                                          // Delay
  
  for (uint8_t i = 0; i < 128; i++) {                   // Empty the array
      resultArray[i] = 255;                             // Will be brute forced all addresses from 0 to 127, so 255 is not a valid address
  }
  
  lcd.searchAddresses(resultArray);                     // Brute force addresses and store results in resultArray

  if (resultArray[0] == 255){                           // If the first element of the array is empty no valid address was found
    Serial.println("No valid address found on the bus!");
  } else {                                              // Else print all valid addresses found
    Serial.println("Valid addresses:");
    for (uint8_t i = 0; i < 128 && resultArray[i] != 255; i++) {
      Serial.print("Hexadecimal:\t0x");
      Serial.print(resultArray[i], HEX);                // Print hexadecimal value
      Serial.print("\t\tDecimal:\t");
      Serial.print(resultArray[i], DEC);                // Print decimal value
      Serial.print("\t\tBinary:\t0b");
      Serial.println(resultArray[i], BIN);              // Print binary value
    }
  }
}

void loop() {
}
