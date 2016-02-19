# Build published programs

.SILENT:

# output file formats
# add any format supported by pandoc: pdf, html, odt, docx...
FORMATS = pdf html

# languages supported
LANGUAGES = sh pl py c cpp java

# build all filename targets
FILES = $(foreach _format,$(FORMATS),literate.$(_lang).$(_format))
TARGETS = $(foreach _lang,$(LANGUAGES),$(FILES))

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

%.docx: %.md
	pandoc $< $(SYNTAX) -o $@

########################################################################
# Utilities
########################################################################

# required: sh, perl, python, gcc, gcc-c++, java...
run:
	$(foreach _lang,$(LANGUAGES),./run-md literate.$(_lang).md;)

clean:
	rm -f $(foreach _format,$(FORMATS),*.$(_format))

build: clean all

# vim:ai:noet:sw=4:ts=4:syntax=make
