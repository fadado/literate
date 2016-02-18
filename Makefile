# Build published programs

.SILENT:

all: literate.sh.pdf literate.sh.html \
	 literate.py.pdf literate.py.html \
	 literate.c.pdf literate.c.html

# required: yum install pandoc texlive discount

literate.sh.pdf:  literate.sh.md; pandoc $? -o $@
literate.sh.html: literate.sh.md; markdown < $? > $@
literate.py.pdf:  literate.py.md; pandoc $? -o $@
literate.py.html: literate.py.md; markdown < $? > $@
literate.c.pdf:   literate.c.md; pandoc $? -o $@
literate.c.html:  literate.c.md; markdown < $? > $@

run:
	./run-md literate.sh.md
	./run-md literate.py.md

clean:
	rm -f *.pdf *.html

build: clean all

# vim:ai:noet:sw=4:ts=4:syntax=make
