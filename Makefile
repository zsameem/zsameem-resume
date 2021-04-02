LATEX=latex
PDFLATEX=pdflatex
BIBTEX=bibtex

TEXFILES=main.tex
PROJECT=main

$(PROJECT).pdf:	$(PROJECT).tex
	$(PDFLATEX) $(PROJECT).tex
