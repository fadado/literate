# Build published programs

.SILENT:

FORMATS = pdf html odt
LANGUAGES = sh py c java

FILES = $(foreach format,$(FORMATS),literate.$(lang).$(format))
TARGETS := $(foreach lang,$(LANGUAGES),$(FILES))

########################################################################
# Rules
########################################################################

all: $(TARGETS)

# required: yum install pandoc texlive

SYNTAX = -s --highlight-style pygments 

%.html: %.md
	pandoc $< $(SYNTAX) -o $@

%.pdf: %.md
	pandoc $< $(SYNTAX) -o $@

%.odt: %.md
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
