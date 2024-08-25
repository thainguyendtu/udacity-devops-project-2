@echo off
if "%1"=="" (
    echo Usage: delete.bat stack-name template-file parameters-file
    exit /b 1
)

aws cloudformation delete-stack --stack-name %1