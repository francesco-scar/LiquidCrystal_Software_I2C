# LiquidCrystal Software I2C
Use I2C LCD with any Input/Output pin of the Arduino, using software implemented I2C protocol

This project is a modified version of [LiquidCrystal_I2C](https://github.com/johnrickman/LiquidCrystal_I2C).

# Usage
This library implement the same functions of the standard [LiquidCrystal_I2C](https://github.com/johnrickman/LiquidCrystal_I2C) library, but instead of using hardware TWI (two wire interface, on pins A4 and A5) protocol it generate the same signals in sofware, with worse performance, but you can use any I/O pin on the board (not necessary A4 and A5, that might be used as analog input if needed)
