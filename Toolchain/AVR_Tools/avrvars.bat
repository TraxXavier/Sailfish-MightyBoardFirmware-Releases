@echo off
echo Setting up environment for MHV AVR Tools 20111106
title MHV AVR Tools 20111106
set USE_SMATCH=

set MHVAVRTOOLS=D:\Bin\AVR_Tools


set PATH=%MHVAVRTOOLS%\bin;%PATH%
set INCLUDE=%MHVAVRTOOLS%\include;%MHVAVRTOOLS%\avr\include
set CC=%MHVAVRTOOLS%\bin\avr-gcc

if  not "1" == "%USE_SMATCH%" goto nosmatch
set REAL_CC=%MHVAVRTOOLS%\bin\avr-gcc.exe
set CHECK=%MHVAVRTOOLS%\bin\smatch.exe --full-path
set CC=%MHVAVRTOOLS%\bin\cgcc

:end
set USE_SMATCH=
