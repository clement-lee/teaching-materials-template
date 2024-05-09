library(bookdown)
render_book("index.Rmd",
            params = list(solution = FALSE),
            output_format = "bookdown::gitbook")

render_book("index.Rmd",
            params = list(solution = FALSE),
            output_format = "bookdown::pdf_book")

