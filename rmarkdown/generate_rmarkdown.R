library(rmarkdown)
render("practical1.Rmd",
       params = list(solution = FALSE),
       output_format = "html_document", 
       output_file = "generated/practical1_questions.html")

render("practical1.Rmd",
       params = list(solution = FALSE),
       output_format = "pdf_document", 
       output_file = "generated/practical1_questions.pdf")

render("practical1.Rmd",
       params = list(solution = TRUE),
       output_format = "html_document", 
       output_file = "generated/practical1_solutions.html")

render("practical1.Rmd",
       params = list(solution = TRUE),
       output_format = "pdf_document", 
       output_file = "generated/practical1_solutions.pdf")
