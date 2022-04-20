@echo off
set input=%1
set output=%input:~0,-4%gif

C:\ffmpeg\bin\ffmpeg.exe -t 2 -i  %input%  -vf "fps=15, scale = 500:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0  

%output%
echo %output%
