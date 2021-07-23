all: index.html

index.html: index.md template/_index.html
	$(info compiling $@...)
	@pandoc -o $@ $< --template $(word 2,$^)
	$(info $@ compiled)