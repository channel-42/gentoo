#!/bin/bash
# script for opening compiled output files from 
# corresponding source file
# based on Luke Smith's opout script

# get suffix
basename="$(echo "$1" | sed 's/\.[^\/.]*$//')"

case "$1" in
	*.tex|*.md|*.[rR]md|*.ms|*.me|*.mom) zathura "$basename".pdf >/dev/null 2>&1 & ;;
        *.html) xdg-open "$basename".html > /dev/null 2>&1 &;;
esac
