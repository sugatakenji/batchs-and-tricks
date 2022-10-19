@echo off
set input=%1
set extension=_h264.mov
set output=%input:~0,-4%%extension%
ffprobe.exe  -v error -count_frames -show_entries stream=nb_read_frames -print_format csv  %input% 
pause
echo %output%
