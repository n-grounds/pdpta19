
paper: paper.tex paper.bib 
	pdflatex paper
	bibtex paper
	pdflatex paper
	pdflatex paper
	rm -f paper.aux paper.log paper.out paper.bbl paper.blg
