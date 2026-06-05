OUTPUT_DIR = build
MAIN = ./src/invoice.tex

CMD = optex
ARGS = --output-directory=$(OUTPUT_DIR)

all:
	$(CMD) $(ARGS) $(MAIN)
	$(CMD) $(ARGS) $(MAIN)

clean:
	rm -rf $(OUTPUT_DIR)/*