@echo off
:: Get the directory of the current script
set "this=%~dp0"
:: Remove trailing backslash if present
if "%this:~-1%"=="\" set "this=%this:~0,-1%"

:: Check if publisher.jar exists
if not exist "%this%\input-cache\publisher.jar" (
    pushd "%this%"
    call "%this%\_updatePublisher.bat" -f -y
    popd
)

docker pull hl7fhir/ig-publisher-base:latest

docker run --rm -it -v "%this%:/workdir" -v "%USERPROFILE%\.fhir:/home/publisher/.fhir" ^
  hl7fhir/ig-publisher-base:latest /bin/bash -c "cd /workdir && ./_genonce.sh -tx https://term.tehik.ee/fhir/"
