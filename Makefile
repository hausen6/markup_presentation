TARGET = main
BUILD_DIR = build
OURPUT = $(BUILD_DIR)/$(TARGET).pdf

$(OURPUT): $(TARGET).tex
	lualatex --halt-on-error --output-directory=$(BUILD_DIR) $<

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)/*

$(BUILD_DIR)/:
	mkdir $(BUILD_DIR)

