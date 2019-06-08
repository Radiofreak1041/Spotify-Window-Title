@echo off

:loop
(tasklist /fi "imagename eq spotify.exe" /fo list /v | FINDSTR "Window Title: " | FINDSTR "\-")>output.txt
set /P origtxt=<output.txt

for /f "tokens=2 delims=:" %%a in ("%origtxt%") do (
  set afterw=%%a
)

echo %afterw%>output.txt
choice /d y /t 2 > nul
goto loop

PAUSE>nul

