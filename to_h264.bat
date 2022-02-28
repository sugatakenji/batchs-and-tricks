@echo off
set input=%1
set extension=_h264.mov
set output=%input:~0,-4%%extension%
ffmpeg.exe -i %input% -c:v libx264  -crf 18 -pix_fmt yuv420p  %output%
echo %output%
