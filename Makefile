PROG_NAME = out

SOURCES = $(wildcard src/*.ml)
RESULT = $(PROG_NAME)

PACKS = oUnit

-include OCamlMakefile

run:
	make
	./$(PROG_NAME)
	make cleanup
	rm *.log
