TARGET = main.md
BUILD_OBJ: $(TARGET:%.md=%.pdf)

HEADER_FILE = header.tex
LATEX = lualatex


.SUFFIXES: .md .pdf
.md.pdf:
	pandoc $< -H $(HEADER_FILE) -t beamer -o $@ --latex-engine=$(LATEX)

.DEFAULT: all
all: $(BUILD_OBJ)
