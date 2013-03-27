# Makefile for pdf
rm_cmd = rm -vi
%.pdf : %.ps
	ps2pdf $<
%.ps : %.dvi
	dvips -Ppdf -G0 $<
%.dvi : %.tex
	latex $<	
clean:
	${rm_cmd} *.dvi
	${rm_cmd} *.ps
	${rm_cmd} *.pdf
