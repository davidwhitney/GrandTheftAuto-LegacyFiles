@echo off
echo. Loading GTA : London 1961 Manchester Single Player MOD/Drag Race
echo. This file renames some crucial files and then runs the game. 
echo. The game you are about to play is GTA:London 1961, launched with
echo. the Manchester map modified to have police.  There is also a work
echo. in progress multiplayer 'Drag Race' option.  To run the game just
echo. select a character then launch Chapter 1 "Manchester"
goto mission

:mission
ren missuke.ini misstemp.ini
ren missmcr.ini missuke.ini
ren enguke.fxt engtemp.fxt
ren mcruke.fxt enguke.fxt
goto go

:go
cd ...\gtados
gta24_61.exe
goto end

:end
cd ..\gtadata\uk\
ren missuke.ini missmcr.ini
ren misstemp.ini missuke.ini 
ren enguke.fxt mcruke.fxt
ren engtemp.fxt enguke.fxt 
echo.
echo Hope you liked Manchester with Police and will pay another visit!!!





