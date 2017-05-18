RMD_FILE = assignment-3-solutions.Rmd
PDF_FILE = ${RMD_FILE:%.Rmd=%.pdf}
HTML_FILE = ${RMD_FILE:%.Rmd=%.html}

all: $(PDF_FILE) $(HTML_FILE)

$(PDF_FILE): $(RMD_FILE) $(wildcard includes/*.tex)
	Rscript -e 'rmarkdown::render("$<",output_format="pdf_document")'

$(HTML_FILE): $(RMD_FILE) $(wildcard includes/*.html)
	Rscript -e 'rmarkdown::render("$<",output_format="html_document")'
