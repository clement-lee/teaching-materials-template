.PHONY: filename.pdf all clean

all: filename.pdf

filename.pdf: filename.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make $<

filename.tex: filename.Rnw
	Rscript -e 'library(knitr)' \
			-e 'knit("$<")'

## actual targets
intro: intro.Rmd
	Rscript --no-save --no-restore-data -e 'library(rmarkdown); render("intro.Rmd", c("html_document", "word_document", "pdf_document", "beamer_presentation"), c("intro.html", "InTrO.docx", "INTRO.pdf", "intro_beamer.pdf"), clean = FALSE)'
	mv intro.knit.md intro.md
	rm intro.utf8.md
	git add intro.md

template: template.Rmd
	Rscript --no-save --no-restore-data -e 'library(rmarkdown); render("template.Rmd", "all", clean = FALSE)'
	mv template.knit.md template.md
	rm template.utf8.md
	git add template.md

reproducibility: reproducibility.Rmd
	Rscript --no-save --no-restore-data -e 'library(rmarkdown); render("reproducibility.Rmd", "slidy_presentation")'
	Rscript --no-save --no-restore-data -e 'library(rmarkdown); render("reproducibility.Rmd", "beamer_presentation")'

## CLEAN: 'latexmk --help' to read on -CA option
clean:
	latexmk -CA

remove:
	rm *.tex *.bbl *.soc *.log *.blg *.out *.aux *.fls *.snm *.nav *.fdb_latexmk

scratch: clean remove
