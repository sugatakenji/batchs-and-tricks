@echo off
set input=%1
set extension=_hapalpha.mov
set output=%input:~0,-4%%extension%

ffmpeg.exe -i %input% -c:v hap -format hap_alpha %output%
echo %output%

pause
