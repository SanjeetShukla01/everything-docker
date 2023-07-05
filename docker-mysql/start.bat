@echo off

REM Function to build the Docker image
:build
echo Building Docker image...
docker-compose build
goto :EOF

REM Function to run the Docker container
:run
echo Running Docker container...
docker-compose up -d
goto :EOF

REM Function to build and run the Docker container
:build_and_run
call :build
call :run
goto :EOF

REM Main script execution starts here

REM Check command-line argument and execute the corresponding function
if "%1"=="build" (
    call :build
) else if "%1"=="run" (
    call :run
) else if "%1"=="build_and_run" (
    call :build_and_run
) else (
    echo Invalid command. Usage: start.bat [build | run | build_and_run]
)

:EOF
