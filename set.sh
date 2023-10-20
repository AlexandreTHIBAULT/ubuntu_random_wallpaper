#!/bin/bash
PATH_PARENT=$( dirname $(realpath ${BASH_SOURCE[0]}) )
cd $PATH_PARENT

PATH_WP=file://$(pwd)/apod_wallpaper.jpg
gsettings set org.gnome.desktop.background picture-uri ${PATH_WP}