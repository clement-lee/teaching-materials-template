---
title: "A gentle introduction to markdown & Rmarkdown"
author: Clement Lee
date: 2020-07-22
output:
    html_document: default
    word_document: default
    pdf_document: default
    beamer_presentation: default
---





# What is markdown? Why markdown?
Like LaTeX, `markdown` is a markup language for compiling documents. The file extension of a markdown document is md.

Upside:

1. You can compile documents of multiple formats, all at once using the same source file.
2. Flexibility with html leads to accessibility.
3. The syntax is simpler, so the learning curve is less steep than LaTeX.
4. You can mix in (some) LaTeX commands, so nothing is wasted - you will see some in the source files.

Downside:

- It is not as flexible as LaTeX.





# System requirements
- If you don't use R ***OR*** you use R **but not RStudio**, you will need to install [pandoc](http://pandoc.org/) (external to R).
- If you use RStudio, pandoc is already bundled, so just go to the next section.
- You will also need to have LaTeX installed for generating pdf documents, as markdown essentially compiles the source file to a tex file, then to a pdf via LaTeX.





# How do I actually generate a document?





## Terminal way
- Type the following commands to generate an html, a docx, a pdf document and a beamer pdf, respectively:

```bash
pandoc -t html -o intro.html intro.md
pandoc -t docx -o InTrO.docx intro.md
pandoc -t latex -o INTRO.pdf intro.md
pandoc -t beamer -o intro_beamer.pdf intro.md
```

You can see the flexibility without requiring any changes.

For more command line options, please see compile.sh in Emma's example.





## R way:
See next section / slide for details. You will need the package `rmarkdown` installed.





# How do I actually generate a document? (cont'd)





## R way:
The following commands in R console gives the same outputs as above:

> library(rmarkdown)

> render("intro.md", "html_document", "intro.html")

> render("intro.md", "word_document", "InTrO.docx")

> render("intro.md", "pdf_document", "INTRO.pdf")

> render("intro.md", "beamer_presentation", "intro_beamer.pdf")





# Rmarkdown in summary

$$ \text{Rmarkdown} = \text{R} + \text{markdown} $$

The file extension of an Rmarkdown document is Rmd.





## Why use Rmarkdown? Isn't markdown sufficient?
1. You can include R code chunks in an Rmd file, and generate results (numerical, graphical) dynamically.
2. This means the results are reproducible, and (theoretically) there is no need for bundling local files for others to generate the same document that contains some lines like `\includegraphics{path/to/a/local/plot.pdf}`.





# Workflow
1. Write an Rmd file, with markdown syntax for any text, and R code chunks that will be evaluated by R.
2. As before, use R to compile:  

> render("\<sourcefile\>.Rmd", "\<output_format\>", "\<outputfile\>")

3. If you use RStudio, there are buttons that, upon clicking, do the same as step 2.
4. The function `render()` will evaluate the R code chunks, generate an intermediate md file automatically, then calls pandoc to generate the final outputs.





# markdown $\subset$ Rmarkdown
- If you write an Rmd file without any R code chunk, it will be the same as the intermediate md file. (This is the case for writing THIS source file.)
- In other words, an md file is an Rmd file. The converse is not true.





## Exercises
- Compare intro.Rmd and intro.md to check their equality.
- Generate the outputs from the source file using the ways introduced above.
- Compare template.Rmd and template.md to check their equality.
- Edit either template as appropriate, according to your preference.
- Generate the output from the source file. 





# Advanced
- For presentation slides (beamer & html) with some accessibility basics, see **template.Rmd** and the associated outputs.
- For the reproducibile power of Rmarkdown, see **reproducibility.Rmd** and the associated outputs.
- One script to rule them all: putting all the commands in either a bash script or makefile can generate everything in one command.





# Potential for learning
- Not only can we produce materials using markdown, students can also write their coursework using markdown, which is easier than LaTeX to teach.
- This facilitates the marking of the coursework electronically on Moodle, as well as the checking for plagirism.
- One caveat is that turnitin currently doesn't accept md or Rmd as the file extension. One workaround is ask the students to use txt as the file extension. The contents are not changed as the source file is just a plain text file.
