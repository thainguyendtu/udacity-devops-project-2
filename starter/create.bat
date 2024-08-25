@echo off
if "%1"=="" (
    echo Usage: create.bat stack-name template-file parameters-file
    exit /b 1
)

aws cloudformation create-stack --stack-name %1 --template-body file://%2 --parameters file://%3 --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM --region us-east-1