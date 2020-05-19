#!/bin/bash
set -e

echo "##"
echo "# Building examples"
echo "##"
echo ""

echo "- presentation-latex"
cd "presentation-latex"
xelatex -shell-escape presentation.tex
xelatex -shell-escape presentation.tex
xelatex -shell-escape presentation.tex
# pdftoppm -r 150 -png "presentation.pdf" > "presentation.png"
cd ".."

echo "- pandoc-beamer"
pandoc "pandoc-beamer/pandoc-beamer.md" -o "pandoc-beamer/pandoc-beamer.pdf" --from markdown --to beamer --listings
pdftoppm -r 150 -png "pandoc-beamer/pandoc-beamer.pdf" > "pandoc-beamer/pandoc-beamer.png"

