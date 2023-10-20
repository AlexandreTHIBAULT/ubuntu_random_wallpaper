#!/bin/bash
PATH_PARENT=$( dirname $(realpath ${BASH_SOURCE[0]}) )
cd $PATH_PARENT

API_KEY=$(cat api_key_pexels)
URL_JSON="https://api.pexels.com/v1/search?query=foggy%20forest&per_page=1&page=$((RANDOM%100))&orientation=landscape"

URL=$( curl -H "Authorization: ${API_KEY}" ${URL_JSON} | jq -r ".photos[0].src.original")


curl ${URL} --output pexels_wallpaper.jpg

./set_pexels.sh