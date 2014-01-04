@echo off
echo Loading TownFive by David 'The GTA Jedi' Whitney 1998
goto mission

:mission
cd ..\gtadata
ren mission.ini mission.day
copy ..\ssgta\mission.ini mission.ini
copy ..\ssgta\space2.cmp ..\gtadata\space2.cmp
ren english.fxt english.day
copy ..\ssgta\english.fxt english.fxt
ren special.fxt special.day
ren F_Play.raw
copy ..\ssgtaa\F_Play1.raw F_Play1.raw
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
del townfive.cmp
del english.fxt
del special.fxt
ren mission.day mission.ini
ren english.day english.fxt
ren special.day special.fxt
echo.
echo Hope you liked TownFive and will pay the city another visit !!!





