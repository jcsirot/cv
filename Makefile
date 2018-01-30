IMAGE = jcsirot/latex
DOCS = jcsirot-resume.pdf

DOCKER = docker

.PHONY: clean all

all: $(DOCS)

clean:
	rm -rf *.aux *.out *.log *.pdf

%.pdf: %.tex
	$(DOCKER) run --rm -ti -v $(PWD):/src -e DOCUMENT=$< jcsirot/latex
