@echo off
set input=%1

ffplay.exe  %input% -vf tmix=frames=4:weights="2 5 1 2" %output%
