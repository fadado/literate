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

    echo 'Thats all Folks!'

Fancy, doensn't it?

## How to evaluate?

Simply run this command in the Shell:

```
$ ./run-md literate.sh.md 
>>> Running: literate.sh.md
Thats all Folks!
```

## How to publish?

Install a plugin for Markdown in you browser or convert this file using any
Markdown conversor, like:


```
sudo yum -y install discount elinks
markdown < literate.sh.md >| literate.sh.html
elinks literate.sh.html
```

Using PDF?

```
sudo yum -y install pandoc texlive evince
pandoc literate.sh.md -o literate.sh.pdf
evince literate.sh.pdf
```

Or simply run `make` in this directory!

## But, who is Donald Knuth?

Are you kidding me?

![That's all Folks!](Thats_all_folks.png)

<!--
vim:ai:et:sw=4:ts=4:syntax=markdown
-->
