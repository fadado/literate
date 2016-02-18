# Python literate example

This is an example of Python programming, in the style promoted by Knuth called
_literate programming_.  The text is encoded using Markdown.

More about _literate programming_:

* <https://en.wikipedia.org/wiki/Literate_programming>
* <https://es.wikipedia.org/wiki/Programaci%C3%B3n_literaria>
* <https://ca.wikipedia.org/wiki/Programaci%C3%B3_liter%C3%A0ria>

## The program

The simplest Python program:

    print('Thats all Folks!')

Fancy, doensn't it?

## How to evaluate?

Simply run this command in the Shell:

```
$ ./run-md literate.py.md 
>>> Running: literate.py.md
Thats all Folks!
```

## How to publish?

Install a plugin for Markdown in you browser or convert this file using any
Markdown conversor, like:


```
sudo yum -y install discount elinks
markdown < literate.py.md >| literate.py.html
elinks literate.py.html
```

Using PDF?

```
sudo yum -y install pandoc texlive evince
pandoc literate.py.md -o literate.py.pdf
evince literate.py.pdf
```

Or simply run `make` in this directory!

## But, who is Donald Knuth?

Are you kidding me?

![That's all Folks!](Thats_all_folks.png)
<!--
vim:ai:et:sw=4:ts=4:syntax=markdown
-->
