#!/bin/bash
pdflatex -interaction=nonstopmode -halt-on-error onlab1.tex
echo
echo Press enter to continue...
echo
read var
bibtex onlab1
pdflatex -interaction=nonstopmode -halt-on-error onlab1.tex
pdflatex -interaction=nonstopmode -halt-on-error onlab1.tex

rm onlab1.aux onlab1.bbl onlab1.blg onlab1.log onlab1.out onlab1.toc
rm tartalom/*.aux

