library(bookdown)
render_book("index.Rmd",
            params = list(solution = FALSE),
            output_dir = "gaps/",
            output_format = "bookdown::gitbook")

render_book("index.Rmd",
            params = list(solution = FALSE),
            output_dir = "gaps/",
            output_format = "bookdown::pdf_book")

render_book("index.Rmd",
            params = list(solution = TRUE),
            output_dir = "complete/",
            output_format = "bookdown::gitbook")

render_book("index.Rmd",
            params = list(solution = TRUE),
            output_dir = "complete/",
            output_format = "bookdown::pdf_book")

