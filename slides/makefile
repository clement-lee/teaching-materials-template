.PHONY: all

# Typing `make` or `make all` in terminal will generate all targets
all: slides

slides: slides.Rmd
	Rscript --no-save --no-restore-data -e 'rmarkdown::render("$<", params = list(solution = FALSE), output_format = "slidy_presentation", output_file = "generated/slides_gaps.html")'
	Rscript --no-save --no-restore-data -e 'rmarkdown::render("$<", params = list(solution = FALSE), output_format = "beamer_presentation", output_file = "generated/slides_gaps.pdf")'
	Rscript --no-save --no-restore-data -e 'rmarkdown::render("$<", params = list(solution = TRUE), output_format = "slidy_presentation", output_file = "generated/slides_full.html")'
	Rscript --no-save --no-restore-data -e 'rmarkdown::render("$<", params = list(solution = TRUE), output_format = "beamer_presentation", output_file = "generated/slides_full.pdf")'
