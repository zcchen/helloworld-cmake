PROJECT = helloworld
VERSION = 0.0.1

BUILDDIR = build
MAKEFLAGS  += --no-print-directory

.PHONY: all cleanall docker
.SECONDEXPANSION: %

all: $(BUILDDIR)/Makefile
	make -C $(BUILDDIR) $@

docker: cleanall
	docker build ./ -f docker/Dockerfile \
		--force-rm=true \
		-t $(PROJECT):v$(VERSION)

cleanall:
	-rm -rf $(BUILDDIR)
	-docker rmi $(PROJECT):v$(VERSION)

$(BUILDDIR)/Makefile:
	cmake -B $(BUILDDIR) $(CURDIR)

%: $(BUILDDIR)/Makefile
	make -C $(BUILDDIR) $@

