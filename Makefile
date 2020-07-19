install:
	sudo apt install texlive-latex-extra

clean:
	rm *.aux *.bbl *.blg *.log *.out *.pdf

build:
	pdflatex mc_cv.tex
	bibtex mc_cv.aux
	pdflatex mc_cv.tex
