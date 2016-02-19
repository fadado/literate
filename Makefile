# Build published programs

.SILENT:

SH = literate.sh.pdf literate.sh.html
PY = literate.py.pdf literate.py.html
JAVA = literate.java.pdf literate.java.html
C = literate.c.pdf literate.c.html

########################################################################
# Rules
########################################################################

all: $(SH) $(PY) $(JAVA) $(C)

# required: yum install pandoc texlive

SYNTAX = -s --highlight-style pygments 

%.html: %.md
	pandoc $< $(SYNTAX) -o $@

%.pdf: %.md
	pandoc $< $(SYNTAX) -o $@

########################################################################
# Utilities
########################################################################

# required: sh, python, cc, java
run:
	./run-md literate.sh.md
	./run-md literate.py.md
	./run-md literate.c.md
	./run-md literate.java.md

clean:
	rm -f *.pdf *.html *.java *.class *.o a.out

build: clean all

# vim:ai:noet:sw=4:ts=4:syntax=make
