LATEX := xelatex
LATEX_ARGS := -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error
LATEXMK := latexmk

example.pdf: example.tex cumcmthesis.cls
	$(LATEX) $(LATEX_ARGS) example.tex

clean:
	$(LATEXMK) -c example.pdf
	rm -f example.pdf *.synctex.gz

all: example.pdf