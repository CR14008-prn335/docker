#!/bin/bash
# -*- ENCODING: UTF-8 -*-

echo Limpieza.
sleep 2s
echo deteniendo
sleep 1s
echo ..
sleep 1s
echo ....
sleep 1s
echo ......
sleep 1s
echo .........
sleep 1s
echo ............
sudo systemctl stop postgresql
echo posgres detenido.
sudo docker rm $(docker ps -a -q)
echo contenedores eliminados.
