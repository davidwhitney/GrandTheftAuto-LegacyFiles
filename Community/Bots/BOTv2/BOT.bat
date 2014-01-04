@echo off
echo Loading the Extreme GTA BOT The GTA Jedi...
if exist ..\gtadata\mission.ini goto mission
goto mission

:mission
cd ..\gtadata
ren mission.ini mission.day
ren english.fxt english.day
ren special.fxt special.day
copy ..\bot\mission.ini mission.ini
copy ..\bot\english.fxt english.fxt
copy ..\bot\special.fxt special.fxt
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

cd gtados
gta8.exe
goto end

:HIGH
cd gtados
gtafx.exe
goto end

:end
cd ..\gtadata
del mission.ini
del english.fxt
del special.fxt
ren mission.day mission.ini
ren english.day english.fxt
ren special.day special.fxt
echo.
echo Hope you liked the Extreme GTA BOT By The GTA Jedi!!!





