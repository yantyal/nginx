@echo off
rem Use environment variables
curl -X POST -H "Content-Type: application/json" --data "@%SLACK_JSON_PATH%" "%SLACK_WEBHOOK_URL%"
