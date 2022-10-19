@echo off
set input=%1
set extension=_h264.mov
set output=%input:~0,-4%%extension%
ffplay -vf "drawtext=fontfile=Arial.ttf: text= %%{frame_num}: start_number=0: x=(w-tw)/2: y=h-(2*lh): fontcolor=black: fontsize=20: box=1: boxcolor=white: boxborderw=5" %input%
pause
echo %output%
