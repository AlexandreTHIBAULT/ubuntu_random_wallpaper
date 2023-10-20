#!/bin/bash
URL_JSON="https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY"
URL=$(curl ${URL_JSON} | jq -r '.hdurl')

PATH_PARENT=$( dirname $(realpath ${BASH_SOURCE[0]}) )
cd $PATH_PARENT

curl ${URL} --output apod_wallpaper.jpg

./set_apod.sh