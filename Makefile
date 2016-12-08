
%.pdf:%.ps
	ps2pdf $^
%.ps:%.dvi
	dvips $^
%.dvi:%.tex
	latex $^
	latex $^
all: capitulo01.pdf capitulo02.pdf capitulo08.pdf capitulo09.pdf capitulo10.pdf

public:
	cp *.pdf ~/Dropbox/Public

clean:
	rm *.aux *.log *.dvi *.ps *.out

