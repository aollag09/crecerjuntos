@echo off

set port=5432
set name=crecer_juntos
set volume="%APPDATA%\docker\volumes\postgres"
set dbname="cs_courses"

:loop
IF NOT "%1"=="" (
    IF "%1"=="-f" (
        SET filepath=%2
        SHIFT
    )
    IF "%1"=="-p" (
        SET port=%2
        SHIFT
    )
    IF "%1"=="-n" (
        SET name=%2
        SHIFT
    )
    IF "%1"=="-v" (
        SET volume=%2
        SHIFT
    )
    IF "%1"=="-d" (
        SET dbname=%2
        SHIFT
    )
     IF "%1"=="-h" (
        echo "Usage : "
        echo "./start-database.sh Default, launch sql database container with local data or new database. "
        echo "./start-database.sh -f filepath will launch sql database container with databasedump in filepath"
        echo "./start-database.sh -p port set a custom port for database service, default is 5432"
        echo "./start-database.sh -n name set a custom name of the docker image"
        echo "./start-database.sh -v path set a custom volume of the docker image"
        echo "./start-database.sh -d name set a custom name for the database"
        exit 0
     )
    SHIFT
    GOTO :loop
)
echo **** Start Database with options *****
echo Docker Image name :   %name%
echo Docker DB Port :      %port%
echo Docker Volume :       %volume%
echo Database Name :       %dbname%
echo Dump location :       %filepath%
echo **************************************

:: Launch database container
echo Checking if database already launched.
netstat /o /a | find /i "listening" | find ":%port%" >nul 2>nul &&(
  echo Postgres default port already taken. Assuming database was launched
) || (
  echo Let's start the database
  echo Making sure no existing container with the wished name
  docker stop %name%
  docker rm %name%
  echo Pulling Postgres docker
  docker pull postgres:9.5
  echo Launching docker
  docker run --name "%name%" -e POSTGRES_PASSWORD=docker -d -p "%port%":"%port%" -v "%volume%" postgres:9.5
)

:: Check database was created and if not, create it
docker exec "%name%" psql -U postgres -tc ""CREATE DATABASE %dbname%;"" >nul 2>nul
docker exec "%name%" psql -U postgres -tc ""grant all privileges on database %dbname% to postgres;""
