# LiquidCrystal Software I2C
Use I2C LCD with any Input/Output pin of the Arduino, using software implemented I2C protocol

This project is a modified version of [LiquidCrystal_I2C](https://github.com/johnrickman/LiquidCrystal_I2C).

# Description
This library implements the same functions of the standard [LiquidCrystal_I2C](https://github.com/johnrickman/LiquidCrystal_I2C) library, but instead of using hardware TWI (two wire interface, on pins A4 and A5) protocol it generate the same signals in software, with worse performance, but you can use any I/O pin on the board (not necessary A4 and A5, that might be used as analog input if needed).

# Usage
To initialize the LCD object you have to use the following syntax:

`LiquidCrystal_I2C lcd(ADDRESS, COLUMNS, ROWS, SDA_PIN, SCL_PIN)`

Where:
- ADDRESS is the I2C address of the device connected on the bus (usually 0x27 or 0x3f, but refer to the below section [Address Scanner](#Address-Scanner))
- COLUMNS is the number of columns of your display (most used ones have 16 or 20 columns)
- ROWS is the number of rows of your display (most used ones have 2 or 4 columns)
- SDA_PIN is the pin connected to the SDA pin of the I2C interface of your LCD screen
- SCL_PIN is the pin connected to the SCL pin of the I2C interface of your LCD screen

More information about the usage of the library in the examples.
