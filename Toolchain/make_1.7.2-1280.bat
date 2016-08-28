set curpath=%cd%
set PATH=%curpath%\AVR_Tools\bin;%PATH%;%curpath%\Python27
set AVR_HOME=%curpath%\AVR_Tools

cd v77
cd firmware
REM call scons platform=mighty_one
call scons platform=mighty_one-ctc

cd ..
cd ..

REM avr-size -d -C --mcu=atmega1280 .\v77\firmware\build\mighty_one-ctc\mighty_one_v7.7.0.en.elf
avr-size -d -C --mcu=atmega1280 .\v77\firmware\build\mighty_one-ctc\mighty_one-ctc_v7.7.0.en.elf
