@echo off
echo. Loading GTA : London 1961 Manchester Single Player MOD/Drag Race
echo. This file renames some crucial files and then runs the game. 
echo. The game you are about to play is GTA:London 1961, launched with
echo. the Manchester map modified to have police.  There is also a work
echo. in progress multiplayer 'Drag Race' option.  To run the game just
echo. select a character then launch Chapter 1 "When we were very small"
goto mission

:mission
ren missuke.ini misstemp.ini
ren missmcr.ini missuke.ini
goto go

:go
cd..
cls
echo 1 - Low color DOS
echo 2 - 3Dfx DOS
echo Choose 1 for Low color GTA (DOS) or choose 2 for 3Dfx GTA (DOS)
echo.
choice /c:12 Choose
if errorlevel 2 goto HIGH

cd ..\gtados
gta8_61.exe
goto end

:HIGH
cd ..\gtados
gtafx_61.exe
goto end

:end
cd ..\gtadata\uk\
ren missuke.ini missmcr.ini
ren misstemp.ini missuke.ini 
echo.
echo Hope you liked Manchester with Police and will pay another visit!!!





