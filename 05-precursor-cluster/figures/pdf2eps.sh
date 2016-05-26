#!/bin/bash
# Convert PDF to encapsulated PostScript
# usage: pdf2eps <filename.pdf>

# Remove .pdf extension from input
filename=$(echo $1 | sed 's/.pdf//')
# Convert into .eps
pdftops $filename.pdf $filename-temp.ps
ps2eps $filename-temp.ps
mv $filename-temp.eps $filename.eps
rm $filename-temp.ps
