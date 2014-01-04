@echo off
echo Loading TownFive by David 'The GTA Jedi' Whitney 1999
if exist ..\gtadata\mission.ini goto mission
if exist ..\gtadata\nyc.cmp goto nyc
if exist ..\gtadata\english.fxt goto english
if exist ..\gtadata\special.fxt goto special
goto mission

:mission
cd ..\gtadata
ren mission.ini mission.day
copy ..\townfive\mission.ini mission.ini
if exist nyc.cmp goto nyc
goto go

:nyc
copy ..\townfive\townfive.cmp ..\gtadata\townfive.cmp
copy ..\townfive\tfnights.cmp ..\gtadata\tfnights.cmp
if exist english.fxt goto english
goto go

:english
cd ..\gtadata
ren english.fxt english.day
copy ..\townfive\english.fxt english.fxt
if exist special.fxt goto special
goto special

:special
cd ..\gtadata\
ren special.fxt special.day
copy ..\townfive\special.fxt special.fxt
goto go

:go
cd ..\gtados
gtafx.exe
goto end

:end
cd ..\gtadata
del mission.ini
del townfive.cmp
del tfnights.cmp
del english.fxt
del special.fxt
ren mission.day mission.ini
ren english.day english.fxt
ren special.day special.fxt
echo.
echo Hope you liked TownFive and will pay the city another visit !!!





