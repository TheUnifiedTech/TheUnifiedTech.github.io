all: $(patsubst %.md, %.html, $(wildcard *.md))

%.html: %.md template/_index.html
	$(info compiling $@...)
	@pandoc -o $@ $< --template $(word 2,$^)
	$(info $@ compiled)