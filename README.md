# Literate

Literate programming using MarkDown.

Several examples are provided.

## How to run the examples?

Execute

	./run-md literate.sh.md
	./run-md literate.py.md
	./run-md literate.java.md
    # etcetera

or simply execute `make run`.

## How to publish the examples?

Execute

    MANAGER=yum
    which dnf >/dev/null 2>&1 && MANAGER=dnf
    which apt-get >/dev/null 2>&1 && MANAGER=apt-get
    sudo $MANAGER -y install pandoc texlive
    make build
    
HTML and PDF output formats are generated: check with any HTML browser or PDF
viewer.

## How to write programs?

Write MarkDown files with the code to be executed inside triple backtick blocks.
To know the supported file extensions (and related languages) study the file `run-md`.

![That's all Folks!](Thats_all_folks.png)

<!--
vim:et:ai:sw=4:ts=4:syntax=markdown
-->
