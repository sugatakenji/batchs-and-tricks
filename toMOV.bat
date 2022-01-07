@echo off
set input=%1
set extension=mov
set output=%input:~0,-4%%extension%

ffmpeg.exe -i %input%  %output%
echo %output%

pause
