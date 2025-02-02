# --------------------------------------------------------
#  Makefile to compile TransportPhenomena.tex file
#  https://github.com/gphanikumar/tpnotes
#  -------------------------------------------------------
default: TransportPhenomena.tex
	latex TransportPhenomena.tex
all:
	latex TransportPhenomena.tex
	bibtex TransportPhenomena
	makeindex TransportPhenomena
	latex TransportPhenomena.tex
	latex TransportPhenomena.tex
	@echo "Making ps..."
	dvips TransportPhenomena.dvi
	@echo "Making pdf..."
	ps2pdf TransportPhenomena.ps

clean:
	echo "Cleaning up..."
	./clean.sh
	@echo "...done"
	@echo "moving the pdf file up"
	mv TransportPhenomena.pdf ..
	@echo "...done"

# end of Makefile ------------------------------------------
