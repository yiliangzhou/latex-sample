# Makefile for pdf
PDF: not_so_simple.pdf simple.pdf
	xpdf not_so_simple.pdf
	xpdf simple.pdf
not_so_simple.pdf: not_so_simple.ps simple.ps
	ps2pdf not_so_simple.ps
	ps2pdf simple.ps
not_so_simple.ps: not_so_simple.dvi simple.dvi
	dvips -Ppdf -G0 not_so_simple.dvi
	dvips -Ppdf -G0 simple.dvi
not_so_simple.dvi: not_so_simple.tex simple.tex
	latex not_so_simple.tex
	latex simple.tex

clean:
	rm not_so_simple.ps
	rm not_so_simple.dvi
	rm simple.ps
	rm simple.dvi
