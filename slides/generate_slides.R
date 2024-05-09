library(rmarkdown)
render("slides.Rmd", 
       params = list(solution = FALSE),
       output_format = "slidy_presentation", 
       output_file = "generated/slides_gaps.html")

render("slides.Rmd",
       params = list(solution = FALSE),
       output_format = "beamer_presentation",
       output_file = "generated/slides_gaps.pdf")

render("slides.Rmd", 
       params = list(solution = TRUE),
       output_format = "slidy_presentation", 
       output_file = "generated/slides_full.html")

render("slides.Rmd", 
       params = list(solution = TRUE),
       output_format = "beamer_presentation", 
       output_file = "generated/slides_full.pdf")
