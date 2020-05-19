#!/bin/bash
set -e

echo "##"
echo "# Building examples"
echo "##"
echo ""

echo "- demo"
cd "demo"
xelatex -shell-escape demo.tex
cd ".."

echo "- pandoc-beamer"
pandoc "pandoc-beamer/pandoc-beamer.md" -o "pandoc-beamer/pandoc-beamer.pdf" --from markdown --to beamer --listings
pdftoppm -r 150 -png "pandoc-beamer/pandoc-beamer.pdf" > "pandoc-beamer/pandoc-beamer.png"

