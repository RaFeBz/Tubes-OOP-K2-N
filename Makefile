# Makefile Nangor Blast
# Target: make build | make run | make clean

SRC_DIR   := src
OUT_DIR   := bin
MAIN      := nangorblast.Main
JAVAC     := javac
JAVA      := java
SOURCES   := $(shell find $(SRC_DIR) -name '*.java')

.PHONY: all build run clean

all: build

build:
	@mkdir -p $(OUT_DIR)
	$(JAVAC) -d $(OUT_DIR) $(SOURCES)

run: build
	$(JAVA) -cp $(OUT_DIR) $(MAIN)

clean:
	rm -rf $(OUT_DIR)
