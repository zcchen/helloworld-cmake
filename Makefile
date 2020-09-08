BUILDDIR    = build
DOCKERDIR   = docker
MAKEFLAGS  += --no-print-directory

.PHONY: all cleanall docker

all: $(BUILDDIR)/Makefile
	make -C $(BUILDDIR) $@

docker:
	make -C $(DOCKERDIR)

clean:
	-make -C $(BUILDDIR) $@
	-make -C $(DOCKERDIR) clean

cleanall:
	-rm -rf $(BUILDDIR)
	-make -C $(DOCKERDIR) purge

$(BUILDDIR)/Makefile:
	cmake -B $(BUILDDIR) $(CURDIR)

%: $(BUILDDIR)/Makefile
	make -C $(BUILDDIR) $@

