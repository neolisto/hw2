#!/bin/bash

echo "INSERT INTO random (1raw) values(rand())" | mysql -u roma -pQwerty123 --host=127.0.0.1 romadb
echo "SELECT 1raw FROM random" | mysql -u roma -pQwerty123 --host=127.0.0.1 romadb

echo "INSERT INTO random (2raw) values(rand())" | mysql -u roma -pQwerty123 --host=127.0.0.1 romadb
echo "SELECT 2raw FROM random" | mysql -u roma -pQwerty123 --host=127.0.0.1 romadb
