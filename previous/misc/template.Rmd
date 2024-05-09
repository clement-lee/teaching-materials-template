---
title: "TITLE HERE"
author: "AUTHOR HERE"
date: "DATE HERE"
output:
    slidy_presentation:
        duration: 30
    beamer_presentation: default
classoption: "aspectratio=169"
---





## Preamble
- The code between the two lines of $---$ at the beginning of the document is for specifying the title page and the output format. The lines for output format are called YAML options/metadata, and are similar to LaTeX preamble. Edit as appropriate.
- The YAML options have to be indented hierarchically, using spaces but not tabs. Using the latter will lead to errors when generating the output.
* The **header-includes** options are what would have been in the preamble of a tex file. This is why the Lancaster theme can be used for the beamer pdf (but not HTML document).
	* Therefore, the sty's and img/ that are bundled are only for beamer pdf.
- For more output formats, see https://rmarkdown.rstudio.com/lesson-9.html.





# SECTION HEADING HERE





## SLIDE HEADING HERE
SOME TEXT HERE

$$ EQUATION~HERE~USING~LATEX~SYNTAX $$

$$ e.g.\int_{0}^{\pi/2}sin\theta{}d\theta=1 $$

<!-- SOME COMMENTS HERE. NOT SHOWN IN ANY OUTPUT FORMAT -->





## A LONGER SLIDE HEADING HERE
Below is a list similar to \begin{itemize} in LaTeX

- A BULLET POINT
* ANOTHER BULLET POINT
- Compare the generic bullet point in the output and in the source file

Below is a list similar to \begin{enumerate} in LaTeX

1. Remember the full stop after the number 
5. Compare the numbering output and the source file
7. In the output, the numbering is always corrected





## More on lists
When making a list with some preceding text,

- Remember to leave one line between the first item and the preceding text
- Otherwise the list will not be correctly generated
- This line break is not required only when the list follows immediately the title - see source code of next slide.
    * Indenting will create nested list.





## Spaces and linebreaks
- The **number** of spaces and line breaks in general don't matter.
- However, as illustrated above, the **existence** of line break matters for lists.
- Spaces at the end of a line also matter - see below.

A line with no space at the end.
Line break in source code doesn't break line in output.

A line with 2 spaces at the end.  
A new line in the source code now results in a new line in the output.





## Some markdown syntax

|  | LaTeX  | Markdown  | Result  |
|------:|:-----|---------|:------:|
| Bold | \\textbf{foo} | `**`foo`**` | **foo** |
| Italics | \\textit{bar} | `*`bar`*` | *bar* |
| Verbatim | \\verb'foo' | \`foo\` | `foo` |
| URL | \\href{https://lancs.ac.uk}{Link} | `[`Link`](`https://lancs.ac.uk`)` | [Link](https://lancs.ac.uk) |

Above is also a table template.

For quick reference, see https://github.com/rstudio/cheatsheets/raw/master/rmarkdown-2.0.pdf.





## Code blocks
```LANGUAGE
## A COMMENT
## If we need to add code blocks,
## wrap the code with 2 lines of triple backticks in the source file
SOME CODE HERE
MORE CODE HERE # ANOTHER COMMENT
```

- The triple backticks in the source file obviously will not appear in the generated output.
- Following the triple back ticks in the top line is the language.
    * Specifying the language may facilitate code highlighting.
    * However, the code will not be run.
- If the code actually needs to be run, see **reproducibility.Rmd** and its generated outputs.





# Plots





## Local image
![CAPTION HERE](ComputingDataScience.jpg)





## Code for previous slide explained, & accessibility
- The `![CAPTION](PATH/TO/IMG)` is standard in markdown. It is quick and agnostic, but not very flexible.
- In beamer pdf, the image spans over the whole slide.
- In HTML document, the caption also becomes the **alternative text**, making it accessible to e.g. people using a screen reader.
    - Such accessibility is achieved by the `alt` tag in the HTML code, something like `<img src="SOME/IMAGE" alt="CAPTION">`
	- If you want the tooltip i.e. some text when hovering around the image, see the source code of the next slide.
	- The tooltip text can be different from the caption.





## Local image
![CAPTION HERE](ComputingDataScience.jpg "TOOLTIP TEXT HERE; THIS WILL NOT APPEAR IN PDF")





## Online image
- In `![CAPTION HERE](PATH/TO/IMG)`, `PATH/TO/IMG` can be an URL e.g. https://www.lancaster.ac.uk/media/lancaster-university/content-assets/images/fst/featurebox/FeatureBox-ComputingDataScience.jpg
- Note: Using URL for images works for HTML document, but may not work for beamer pdf.
- Also, the URL can be clicked on, both in pdf & HTML document.





## Summary / examples

| Code\\Output | PDF | HTML |
|:------|:-----|---------|
| `![FOO](LOCAL\IMG)` | Spans whole slide | With caption/alternative text `FOO` |
| `![FOO](LOCAL\IMG "BAR")` | Spans whole slide | Same as above + tooltip `BAR` |
| `![FOO](URL\TO\IMG)` | May not compile | With caption/alternative text `FOO` |
| `![FOO](URL\TO\IMG "BAR")` | May not compile | Same as above + tooltip `BAR`|





## Fixing the issues
- Everything so far is within markdown. Rmarkdown provides a way of adjusting the size of the image.
- Rmarkdown also provides a way of generating and including plots dynamically. If we have some data to be plotted via R, we can include some code chunks in the source file, and the plots will be generated on the fly.
- This will be illustrated in **reproducibility.Rmd**.
