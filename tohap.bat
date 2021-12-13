@echo off
set input=%1
set extension=_hap.mov
set output=%input:~0,-4%%extension%

ffmpeg.exe -i %input% -c:v hap %output%
echo %output%

pause
