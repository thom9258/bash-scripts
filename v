#!/bin/bash

((!$#)) && echo "no arguments supplied" && return || \
case $1 in
    *.pdf) okular $1 && ls ;;
    *.jpg ) feh --scale-down --auto-zoom $1 && echo "executed feh --scale-down --auto-zoom" && ls && return;;
    *.png) feh --scale-down --auto-zoom $1 && echo "executed feh --scale-down --auto-zoom" && ls && return;;
    -h) echo "all in one file opener, that uses zathura for .pdf and feh for .jpg and .png anything else goes to neovim" && ls && return ;;
esac
nvim $1
