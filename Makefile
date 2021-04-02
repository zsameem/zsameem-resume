LATEX=latex
PDFLATEX=pdflatex
BIBTEX=bibtex


all: resume.pdf main.pdf
	gs -q -sPAPERSIZE=letter -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=combined.pdf cover.pdf resume.pdf

resume.pdf:	resume.tex
	$(PDFLATEX) resume.tex

cover.pdf: cover.tex
	$(PDFLATEX) cover.tex
