PREFIX := $(HOME)/.local
BINS   := $(shell find * -type f \! -name Makefile)

all:
	@echo You need to specify an action

install:
	install -DCvt $(DESTDIR)$(PREFIX)/bin $(BINS)

uninstall:
	rm -v $(patsubst %,$(DESTDIR)$(PREFIX)/bin/%,$(notdir $(BINS)))

.PHONY: all install uninstall
