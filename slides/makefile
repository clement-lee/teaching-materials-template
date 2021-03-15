.PHONY: all

all: slides

slides: slides.Rmd
	Rscript --no-save --no-restore-data -e 'rmarkdown::render("$<", "beamer_presentation")'
	Rscript --no-save --no-restore-data -e 'rmarkdown::render("$<", "ioslides_presentation")'
