#!/bin/bash
# from LARBS
# Clears the build files of a LaTeX/XeLaTeX build.
# I have vim run this file whenever I exit a .tex file.
file=$(readlink -f "$1")
dir=$(dirname "$file")
base="${file%.*}"

cd "$dir" || exit
clear
case "$file" in
	*\.tex)
	find "$dir"  -maxdepth 1 -type f -regextype gnu-awk -regex "^$base\\.(4tc|xref|tmp|pyc|pyo|fls|vrb|fdb_latexmk|bak|swp|aux|log|synctex\\(busy\\)|lof|lot|maf|idx|mtc|mtc0|nav|out|snm|toc|bcf|run\\.xml|synctex\\.gz|blg|bbl)" -delete ;;
	*) printf "Give .tex file as argument.\\n" ;;
esac

