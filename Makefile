# LATEX: pdflatex | xelatex | lualatex
LATEX = xelatex
LATEX_FLAGS = -shell-escape

FILES = $(patsubst %.tex, %.pdf, $(wildcard *.tex))

all: $(FILES)


%.pdf: %.tex
	$(LATEX) $(LATEX_FLAGS) $<
	$(LATEX) $(LATEX_FLAGS) $<

clean:
	-rm -f *.{log,toc,tac,aux,dvi,ps,bbl,blg,tmp,nav,out,snm,vrb,rel,cut,abs,xmpi,xmpdata,*~}
	-rm -rf out _minted* auto
	-rm $(FILES)
