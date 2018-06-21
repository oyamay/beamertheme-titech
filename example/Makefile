MAIN = main
BUILD = build
ROOT = `git rev-parse --show-toplevel`

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex
	mkdir -p $(BUILD)

	TEXINPUTS="${TEXINPUTS};.;$(ROOT)//;" platex \
	-interaction nonstopmode \
	-halt-on-error \
	-file-line-error \
	-output-directory=$(BUILD) $(MAIN).tex
	TEXINPUTS="${TEXINPUTS};.;$(ROOT)//;" dvipdfmx -o $(BUILD)/$(MAIN).pdf $(BUILD)/$(MAIN).dvi

clean:
	rm -r $(BUILD)
