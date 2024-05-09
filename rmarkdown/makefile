.PHONY: all

# Typing `make` or `make all` in terminal will generate all targets
all: practical1

practical1: practical1.Rmd
	Rscript --no-save --no-restore-data -e 'rmarkdown::render("$<", params = list(solution = FALSE), output_format = "html_document", output_file = "generated/practical1_questions.html")'
	Rscript --no-save --no-restore-data -e 'rmarkdown::render("$<", params = list(solution = FALSE), output_format = "pdf_document", output_file = "generated/practical1_questions.pdf")'
	Rscript --no-save --no-restore-data -e 'rmarkdown::render("$<", params = list(solution = TRUE), output_format = "html_document", output_file = "generated/practical1_solutions.html")'
	Rscript --no-save --no-restore-data -e 'rmarkdown::render("$<", params = list(solution = TRUE), output_format = "pdf_document", output_file = "generated/practical1_solutions.pdf")'
