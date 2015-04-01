# Specifying full paths here breaks the Makefile because each machine installs at a different path.
# Rely on the users $PATH instead
#
LATEX = /usr/texbin/latex
BIBTEX = /usr/texbin/bibtex
PDFLATEX = /usr/texbin/pdflatex
PYTHONEXEC = /opt/anaconda/bin/python

paper.pdf: paper.tex references.bib
	$(LATEX) paper < /dev/null
	$(BIBTEX) paper </dev/null 
	$(PDFLATEX) paper < /dev/null
	$(PDFLATEX) paper < /dev/null
