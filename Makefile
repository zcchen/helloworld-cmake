BUILDDIR = build
MAKEFLAGS  += --no-print-directory

.PHONY: all cleanall
.SECONDEXPANSION: %

all: $(BUILDDIR)/Makefile
	make -C $(BUILDDIR) $@

cleanall:
	-rm -rf $(BUILDDIR)

$(BUILDDIR)/Makefile:
	cmake -B $(BUILDDIR) $(CURDIR)

%: $(BUILDDIR)/Makefile
	make -C $(BUILDDIR) $@

