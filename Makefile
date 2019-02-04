
THESIS = thesis

default:
	@echo "Compiling PhD Thesis ...please wait...!"
	-pdflatex -interaction=nonstopmode $(THESIS).tex
	-bibtex $(THESIS).aux
	-makeindex $(THESIS).aux
	-makeindex $(THESIS).idx
	-makeindex $(THESIS).nlo -s nomencl.ist -o $(THESIS).nls
	-pdflatex -interaction=nonstopmode $(THESIS).tex
	-makeindex $(THESIS).nlo -s nomencl.ist -o $(THESIS).nls
	-pdflatex -interaction=nonstopmode $(THESIS).tex
	@echo "======================================================="
	@echo "Success!"
	@echo "======================================================="

clean:
	@echo "Cleaning please wait ..."
	@rm -f *~
	@rm -f *.aux
	@rm -f Abstract/*.aux
	@rm -f Acknowledgement/*.aux
	@rm -f Appendix*/*.aux
	@rm -f Chapter*/*.aux
	@rm -f summary/*.aux
	@rm -f *.bbl
	@rm -f *.blg
	@rm -f *.d
	@rm -f *.fls
	@rm -f *.ilg
	@rm -f *.ind
	@rm -f *.toc*
	@rm -f *.lot*
	@rm -f *.lof*
	@rm -f *.log
	@rm -f *.idx
	@rm -f *.out*
	@rm -f *.nlo
	@rm -f *.nls
	@rm -f *.glo
	@rm -f $(THESIS).pdf
	@rm -f $(THESIS).ps
	@rm -f $(THESIS).dvi
	@rm -f *#* 
	@echo "Cleaning complete!"

# mrproper: clean
# 	@rm *.pdf *.vrb *.snm *.nav
