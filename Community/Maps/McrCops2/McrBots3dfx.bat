@echo off
echo. Loading GTA : London 1961 Manchester Single Player BOTS
echo. This file renames some crucial files and then runs the game. 
echo. The game you are about to play is GTA:London 1961, launched with
echo. the Manchester map modified to have police.  This mod also features
echo. BOTS.  As soon as you start the first chapter Chapter 1 "When we were very small"
echo. you will get a yellow arrow.  This is your first target.  Kill it.  Hit F6 
echo. And look at the mission complete counter to see how many bots you have killed.
goto mission

:mission
ren missuke.ini misstemp2.ini
ren botsmcr.ini missuke.ini
goto go

:go
cd ...\gtados
gtafx_61.exe
goto end

:end
cd ..\gtadata\uk\
ren missuke.ini botsmcr.ini
ren misstemp2.ini missuke.ini 
echo.
echo Hope you liked Manchester with Police and BOTS and will pay another visit!!!





