#!/bin/sh

cp ./backend/.env.docker.example ./backend/.env
cp ./frontend/.env.example ./frontend/.env

# Ueberpruefe, ob das Betriebssystem Windows ist
if [ "$(uname -s)" = "MINGW"* ] || [ "$(uname -s)" = "CYGWIN"* ] || [ "$(uname -s)" = "MSYS"* ]; then
    echo '\nCHOKIDAR_USEPOLLING=true' >> ./frontend/.env
else
    echo '\nCHOKIDAR_USEPOLLING=false' >> ./frontend/.env
fi
