# Literate

Literate programming using MarkDown.

Several examples are provided.

## How to run the examples?

Execute

	./run-md literate.sh.md
	./run-md literate.py.md

or simply execute `make run`.

## How to publish the examples?

Execute

    sudo yum -y install pandoc texlive discount
    make build
    
HTML and PDF output formats are generated. Check with any HTML browser and PDF
viewer:

	elinks literate.sh.html
	elinks literate.py.html
	evince literate.sh.pdf
	evince literate.py.pdf

## How to write programs?

Write MarkDown files with the code to be executed inside triple backtick blocks.
The file extension must be `.sh.md` or `.py.md`.

<!--
vim:et:ai:sw=4:ts=4:syntax=markdown
-->
