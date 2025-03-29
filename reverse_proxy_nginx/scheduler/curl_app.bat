@echo off

setlocal

rem Define the path to the log file (same directory as this script)
set LOGFILE=%~dp0curl_app.log

rem Log the start of the request
echo [%date% %time%] Request started >> "%LOGFILE%"

rem Send a request to the local reverse proxy and log the result
curl http://localhost/app/ >> "%LOGFILE%" 2>&1

rem If the curl request fails (non-zero exit code), send a Slack notification
IF %ERRORLEVEL% NEQ 0 (
    echo [%date% %time%] Error occurred! >> "%LOGFILE%"
    call "%~dp0notify_slack.bat"
)

endlocal
