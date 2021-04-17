.PHONY: cv

CC = pdflatex
SOURCES_DIR = .
CV_DIR = ./data

cv: $(SOURCES_DIR)/cv.tex
	$(CC) -output-directory=$(SOURCES_DIR) $<
	biber $(SOURCES_DIR)/cv
	$(CC) -output-directory=$(SOURCES_DIR) $(SOURCES_DIR)/cv
	cp $(SOURCES_DIR)/*.pdf .

sample:	$(SOURCES_DIR)/sample.tex
	$(CC) -output-directory=$(SOURCES_DIR) $<
	
mmayer:	$(SOURCES_DIR)/mmayer.tex
	$(CC) -output-directory=$(SOURCES_DIR) $<
	
clean:
	rm -rf $(SOURCES_DIR)/*.{pdf,out,bcf,log,xml,aux,xmpi,blg,bbl}
