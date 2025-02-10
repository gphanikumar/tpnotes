#!/usr/bin/bash
# script to clean up temporary files after latex
# reference https://github.com/gphanikumar/tpnotes
# -------------------------------------------------------
echo "Cleaning up..."
arg=${1:-.}
exts="aux bbl blg brf idx ilg ind loe lof log lol lot out toc synctex.gz"

if [ -d $arg ]; then
    for ext in $exts; do
         rm -f $arg/*.$ext
    done
else
    for ext in $exts; do
         rm -f $arg.$ext
	done
fi

echo "removing dvi and ps files"
rm TransportPhenomena.ps TransportPhenomena.dvi

# end of clean.sh
