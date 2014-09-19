
all: git.pdf

%.tex : %.t2t
	txt2tags --target=tex --encoding=utf-8 $<

%.pdf: %.tex
	rubber --pdf $<

clean:
	rubber --pdf --clean git.tex
	rm -f git.tex
