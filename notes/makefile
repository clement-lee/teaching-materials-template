.PHONY: all

# Typing `make` or `make all` in terminal will generate all targets
all: notes

notes: index.Rmd 01-identities.Rmd 02-reproducibility.Rmd 03-labelling.Rmd
	Rscript --no-save --no-restore-data -e 'bookdown::render_book("$<", params = list(solution = FALSE), output_format = "bookdown::gitbook", output_dir = "gaps/")'
	Rscript --no-save --no-restore-data -e 'bookdown::render_book("$<", params = list(solution = FALSE), output_format = "bookdown::pdf_book", output_dir = "gaps/")'
	Rscript --no-save --no-restore-data -e 'bookdown::render_book("$<", params = list(solution = TRUE), output_format = "bookdown::gitbook", output_dir = "complete/")'
	Rscript --no-save --no-restore-data -e 'bookdown::render_book("$<", params = list(solution = TRUE), output_format = "bookdown::pdf_book", output_dir = "complete/")'
