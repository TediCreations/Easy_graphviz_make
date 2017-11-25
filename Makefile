
BIN_DIR =		bin/
SRC_DIR =		src/

.PHONY: all
all: | $(BIN_DIR)
	@echo			-n "Build "
	@dot -Tpng $(SRC_DIR)diagram.dot -o $(BIN_DIR)output.png
	@echo			"OK"

.PHONY: clean
clean:
	-rm				-rf $(BIN_DIR)

$(BIN_DIR):
	@echo			"Created $@"
	@mkdir			-p $@