.PHONY: all

# Typing `make` or `make all` in terminal will generate all targets
all: automated another










# Typing `make automated` will generate targets within this block, provided that template.Rmd exists
automated: template.Rmd
	Rscript --no-save --no-restore-data -e 'knitr::opts_chunk$$set(include=FALSE); rmarkdown::render("$<", "pdf_document", "automated_questions.pdf")'
	Rscript --no-save --no-restore-data -e 'knitr::opts_chunk$$set(include=FALSE); rmarkdown::render("$<", "html_document", "automated_questions.html")'
	Rscript --no-save --no-restore-data -e 'knitr::opts_chunk$$set(include=TRUE); rmarkdown::render("$<", "pdf_document", "automated_solutions.pdf")'
	Rscript --no-save --no-restore-data -e 'knitr::opts_chunk$$set(include=TRUE); rmarkdown::render("$<", "html_document", "automated_solutions.html")'









# Typing `make another` will generate targets within this block, provided that another.Rmd exists
another: another.Rmd
	Rscript --no-save --no-restore-data -e 'knitr::opts_chunk$$set(include=FALSE); rmarkdown::render("$<", "pdf_document", "another_questions.pdf")'
	Rscript --no-save --no-restore-data -e 'knitr::opts_chunk$$set(include=FALSE); rmarkdown::render("$<", "html_document", "another_questions.html")'
	Rscript --no-save --no-restore-data -e 'knitr::opts_chunk$$set(include=TRUE); rmarkdown::render("$<", "pdf_document", "another_solutions.pdf")'
	Rscript --no-save --no-restore-data -e 'knitr::opts_chunk$$set(include=TRUE); rmarkdown::render("$<", "html_document", "another_solutions.html")'

