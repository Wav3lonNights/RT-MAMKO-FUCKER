@echo off
wp id >%~dp0wpid.txt
for /F %%i in (%~dp0wpid.txt) do set wpid=%%i && del %~dp0wpid.txt
start mpv 1.mp4 --wid=%wpid% --loop=inf --player-operation-mode=pseudo-gui --force-window=yes