#get latexmk to use this
#get mupdf to preview

report:
	latexmk master.tex -pdf
	make clean

clean:
	latexmk -c
	rm -f master-blx.bib
	rm -f master.bbl
	rm -f master.run.xml
	rm -f master.dvi

smart:
	latexmk master.tex -pvc -pdf

setup:
	rsync --recursive latexmkrc $(HOME)/.config/latexmk
