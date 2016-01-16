TARGET = main.md
BUILD_OBJ: $(TARGET:%.md=%.pdf)

HEADER_FILE = header.tex
LATEX = lualatex
THEME = Madrid


.SUFFIXES: .md .pdf
.md.pdf:
	pandoc $< -H $(HEADER_FILE) -t beamer -o $@ --latex-engine=$(LATEX) -V theme:$(THEME)

.DEFAULT: all
all: $(BUILD_OBJ)
