# Perl literate example

This is an example of Perl programming, in the style promoted by Knuth called
_literate programming_.  The text is encoded using Markdown.

More about _literate programming_:

* <https://en.wikipedia.org/wiki/Literate_programming>
* <https://es.wikipedia.org/wiki/Programaci%C3%B3n_literaria>
* <https://ca.wikipedia.org/wiki/Programaci%C3%B3_liter%C3%A0ria>

## The program

The simplest Perl program:

```perl
use strict;
use warnings;

print "That's all Folks!\n";
```

Fancy, doensn't it?

## How to evaluate?

Simply run this command in the Shell:

    $ ./run-md literate.pl.md 
    >>> Running: literate.pl.md
    That's all Folks!

## How to publish?

Install MarkDown processors:

    sudo yum -y install pandoc texlive

and execute `make build` in this directory!  HTML and PDF output formats are
generated. Check with any HTML browser and PDF viewer:

	elinks literate.pl.html
	evince literate.pl.pdf

![That's all Folks!](Thats_all_folks.png)

<!--
vim:ai:et:sw=4:ts=4:syntax=markdown
-->
