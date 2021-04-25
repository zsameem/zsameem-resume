LATEX=latex
PDFLATEX=pdflatex
BIBTEX=bibtex
OUTPUTRESUME=TarayResume
OUTPUTCOVER=TarayCover
OUTPUTCOMBINED=TarayCoverResume

all: resume.pdf cover.pdf
	gs -q -sPAPERSIZE=letter -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
	-sOutputFile=${OUTPUTCOMBINED}.pdf \
	${OUTPUTCOVER}.pdf ${OUTPUTRESUME}.pdf

resume.pdf:	resume.tex
	$(PDFLATEX) -jobname ${OUTPUTRESUME} resume.tex

cover.pdf: cover.tex
	$(PDFLATEX) -jobname ${OUTPUTCOVER} cover.tex

clean:
	rm -f *.aux *.bbl *.blg  *.log *.ps *.dvi *.brf *.out
