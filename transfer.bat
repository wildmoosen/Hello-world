::Command to verify that the AVR Pocket Programmer is communicating with the board properly
::avrdude -c usbtiny -p atmega328p


::-U <memtype>:r|w|v:<filename>[:format]: 
::OK we're at the important part. This is where we actually get around to telling avrdude how to put the data onto the chip. This command is rather complex, but we'll break it down.

::<memtype> - can be flash, eeprom,  hfuse (high fuse), lfuse (low fuse), or efuse (extended fuse)
::r|w|v - can be r (read), w (write), v (verify) 
::<filename> - the input (writing or verifying) or output file (reading)
::[:format] - optional, the format of the file. You can leave this off for writing, but for reading use i for Intel Hex (the prevailing standard ) 

::For example:
::•To write a file called firmware.hex to the flash use the command: -U flash:w:firmware.hex
::•To verify a file called mydata.eep from the eeprom use the command -U eeprom:v:mydata.eep
::•To read the low fuse into a file use the command -U lfuse:r:lfusefile.hex:i


avrdude -c usbtiny -p atmega328p -U flash:w:Blinky_light\Blinky_light\Debug\Blinky_light.hex

:: Timeout for 10 seconds
TIMEOUT 10