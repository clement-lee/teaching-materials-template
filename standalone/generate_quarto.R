library(quarto)
quarto_render("Practical1.qmd",
              execute_params = list(solution = "false"),
              output_format = "html",
              output_file = "Practical1_questions.html")

quarto_render("Practical1.qmd",
              execute_params = list(solution = "false"),
              output_format = "pdf",
              output_file = "Practical1_questions.pdf")

quarto_render("Practical1.qmd",
              execute_params = list(solution = "true"),
              output_format = "html",
              output_file = "Practical1_solutions.html")

quarto_render("Practical1.qmd",
              execute_params = list(solution = "true"),
              output_format = "pdf",
              output_file = "Practical1_solutions.pdf")