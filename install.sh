#!/bin/bash
PATH_PARENT=$( dirname $(realpath ${BASH_SOURCE[0]}) )
cd $PATH_PARENT

chmod a+x apod_wallpaper
chmod a+x download_apod.sh
chmod a+x set_apod.sh
sudo ln -s $PATH_PARENT/apod_wallpaper /usr/bin/apod_wallpaper

chmod a+x pexels_wallpaper
chmod a+x download_pexels.sh
chmod a+x set_pexels.sh
sudo ln -s $PATH_PARENT/pexels_wallpaper /usr/bin/pexels_wallpaper
