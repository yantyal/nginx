@echo off

set ENV_FILE=%~dp0.env

echo Loading environment variables from %ENV_FILE%...

for /f "usebackq tokens=1,* delims==" %%A in ("%ENV_FILE%") do (
    if /i not "%%A"=="REM" if not "%%A"=="" (
        set "%%A=%%B"
        echo Set %%A
    )
)

echo Done.