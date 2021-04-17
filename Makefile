.PHONY: sample

CC = pdflatex
SOURCES_DIR = .
CV_DIR = ./data

sample:	$(SOURCES_DIR)/sample.tex
	$(CC) -output-directory=$(SOURCES_DIR) $<
	
mmayer:	$(SOURCES_DIR)/mmayer.tex
	$(CC) -output-directory=$(SOURCES_DIR) $<
	
clean:
	rm -rf $(SOURCES_DIR)/*.{pdf,out,bcf,log,xml,aux,xmpi,blg,bbl}
