PROJECT = helloworld
VERSION = 0.0.1

STR_VERSION = v$(VERSION)
BUILDDIR = build
MAKEFLAGS  += --no-print-directory

DOCKER_BUILD_PARAM = --force-rm=true --compress=true

.PHONY: all cleanall docker

all: $(BUILDDIR)/Makefile
	make -C $(BUILDDIR) $@

docker: cleanall
	docker build ./ -f docker/Dockerfile $(DOCKER_BUILD_PARAM) \
		--target=buildimage \
		-t $(PROJECT)-buildimage:$(STR_VERSION)
	docker build ./ -f docker/Dockerfile $(DOCKER_BUILD_PARAM) \
		-t $(PROJECT):$(STR_VERSION)

clean:
	-docker rmi $$(docker images -q "$(PROJECT)-buildimage" -f "label=autodelete=true")
	-make -C $(BUILDDIR) $@

cleanall:
	-rm -rf $(BUILDDIR)
	-docker rmi $(PROJECT):v$(VERSION)

$(BUILDDIR)/Makefile:
	cmake -B $(BUILDDIR) $(CURDIR)

%: $(BUILDDIR)/Makefile
	make -C $(BUILDDIR) $@

