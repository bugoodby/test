@echo off
set BATCHDIR=%~dp0

powershell -ExecutionPolicy RemoteSigned -File "%BATCHDIR%02.String.ps1"

pause
