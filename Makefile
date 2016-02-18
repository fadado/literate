# Build published programs

.SILENT:

all: literate.sh.pdf literate.sh.html \
	 literate.py.pdf literate.py.html \
	 literate.java.pdf literate.java.html \
	 literate.c.pdf literate.c.html

# required: yum install pandoc texlive discount

literate.sh.pdf:  literate.sh.md; pandoc $? -o $@
literate.sh.html: literate.sh.md; markdown < $? > $@
literate.py.pdf:  literate.py.md; pandoc $? -o $@
literate.py.html: literate.py.md; markdown < $? > $@
literate.java.pdf:   literate.java.md; pandoc $? -o $@
literate.java.html:  literate.java.md; markdown < $? > $@
literate.c.pdf:   literate.c.md; pandoc $? -o $@
literate.c.html:  literate.c.md; markdown < $? > $@

# required: sh, python, cc, javac

run:
	./run-md literate.sh.md
	./run-md literate.py.md
	./run-md literate.c.md
	./run-md literate.java.md

clean:
	rm -f *.pdf *.html *.java *.class *.o a.out

build: clean all

# vim:ai:noet:sw=4:ts=4:syntax=make
