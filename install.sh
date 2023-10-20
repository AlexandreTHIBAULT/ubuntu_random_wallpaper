#!/bin/bash
PATH_PARENT=$( dirname $(realpath ${BASH_SOURCE[0]}) )
cd $PATH_PARENT

chmod a+x apod_wallpaper
chmod a+x download.sh
chmod a+x set.sh
sudo ln -s $PATH_PARENT/apod_wallpaper /usr/bin/apod_wallpaper
