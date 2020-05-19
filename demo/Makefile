
LATEX=xelatex

TEXTARGETS=$(wildcard ./demo.tex)

TARGET=$(TEXTARGETS:.tex=.pdf)

MODE ?= batchmode

all: paper

%.aux: paper

bib: $(TARGET:.tex=.aux)
	bibtex $(TARGET:.tex=.aux)

%.pdf: %.tex #%.thumbs
	$(LATEX) --interaction=$(MODE) -shell-escape $<; if [ $$? -gt 0 ]; then echo "Error while compiling $<"; touch $<; fi

paper: $(TARGET)

clean:
	rm -f *.vrb *.spl *.idx *.aux *.log *.snm *.out *.toc *.nav *intermediate *~ *.glo *.ist *.bbl *.blg
