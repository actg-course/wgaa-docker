# Find all subdirectories containing Makefiles
SUBDIRS=$(shell find . -type f -name Makefile | grep -v '\./Makefile' | sort | xargs -n1 dirname)

.PHONY: all build clean

# Build everything
all: build

# Iterate over all directories and invoke their Makefiles
build:
	@for dir in $(SUBDIRS); do \
		echo "Building in $$dir..."; \
		$(MAKE) -C $$dir build || exit 1; \
	done

test:
	@for dir in $(SUBDIRS); do \
		echo "Building in $$dir..."; \
		$(MAKE) -C $$dir test || exit 1; \
	done

# Clean everything
clean:
	@for dir in $(SUBDIRS); do \
		echo "Cleaning in $$dir..."; \
		$(MAKE) -C $$dir clean || exit 1; \
	done