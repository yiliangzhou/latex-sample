latex-sample
============

My LaTeX sample files

usage
========
To build the sample pdfs by yourself, you need to have latex, dvips, ps2pdf and GNU make installed.

To create pdfs from the two samples, simply run `make simple.pdf` and `make not_so_simple.pdf`.
 
The Makefile provided has been modified so as to faciliate the creation of pdf from tex files. You should be able to create `filename.pdf` from `filename.tex` (suppose you have this file) by running `make filename.pdf`. 

