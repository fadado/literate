# Shell literate example

This is an example of Shell programming, in the style promoted by Knuth called
_literate programming_.  The text is encoded using Markdown, and the
programming language used is the Unix Shell.

More about _literate programming_:

* <https://en.wikipedia.org/wiki/Literate_programming>
* <https://es.wikipedia.org/wiki/Programaci%C3%B3n_literaria>
* <https://ca.wikipedia.org/wiki/Programaci%C3%B3_liter%C3%A0ria>

## The program

The simplest Shell program:

```sh
echo "That's all Folks!"
```

Fancy, doensn't it?

## How to evaluate?

Simply run this command in the Shell:

    $ ./run-md literate.sh.md 
    >>> Running: literate.sh.md
    That's all Folks!

## How to publish?

Install MarkDown processors:

    MANAGER=yum
    which dnf >/dev/null 2>&1 && MANAGER=dnf
    which apt-get >/dev/null 2>&1 && MANAGER=apt-get
    sudo $MANAGER -y install pandoc texlive

and execute `make build` in this directory!  HTML and PDF output formats are
generated. Check with any HTML browser and PDF viewer:

	elinks literate.sh.html
	evince literate.sh.pdf

![That's all Folks!](Thats_all_folks.png)

<!--
vim:ai:et:sw=4:ts=4:syntax=markdown
-->
