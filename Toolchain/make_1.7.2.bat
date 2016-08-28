set curpath=%cd%
set PATH=%curpath%\AVR_Tools\bin;%PATH%;%curpath%\Python27
set AVR_HOME=%curpath%\AVR_Tools

cd v77
cd firmware
REM call scons platform=mighty_one-2560
call scons platform=mighty_one-2560-ctc

cd ..
cd ..

avr-size -d -C --mcu=atmega2560 .\v77\firmware\build\mighty_one-2560-ctc\mighty_one-2560-ctc_v7.7.0.en.elf
