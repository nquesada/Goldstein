solutions.pdf: solutions.tex capitulo01.tex capitulo02.tex capitulo08.tex capitulo09.tex capitulo10.tex

%.pdf:%.ps
	ps2pdf $^
%.ps:%.dvi
	dvips $^
%.dvi:%.tex
	latex $^
	latex $^

public:
	cp *.pdf ~/Dropbox/Public

clean:
	rm *.aux *.log *.dvi *.ps *.out

