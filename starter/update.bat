@echo off
if "%1"=="" (
    echo Usage: update.bat stack-name template-file parameters-file
    exit /b 1
)

aws cloudformation update-stack --stack-name %1 --template-body file://%2 --parameters file://%3 --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM --region us-east-1