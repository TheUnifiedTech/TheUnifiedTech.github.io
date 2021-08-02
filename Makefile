all: $(patsubst markdown/%.md, %.html, $(wildcard markdown/*.md))

%.html: markdown/%.md template/_index.html
	$(info compiling $@...)
	@pandoc -o $@ $< --template $(word 2,$^)
	$(info $@ compiled)
