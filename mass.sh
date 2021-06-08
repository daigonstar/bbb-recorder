#!/bin/bash

source .env

File=list.txt
Lines=$(cat $File)

for Line in $Lines
do
    url="${SERVER_URL}${Line}"
    node export.js "${url}"
done