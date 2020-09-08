PROJECT = helloworld
VERSION = 0.0.1

STR_VERSION = v$(VERSION)
DOCKER_BUILD_PARAM = --force-rm=true --compress=true

.PHONY: docker clean

docker:
	docker build $(CURDIR)/../ -f Dockerfile $(DOCKER_BUILD_PARAM) \
		--target=buildimage \
		-t $(PROJECT)-buildimage:$(STR_VERSION)
	docker build $(CURDIR)/../  -f Dockerfile $(DOCKER_BUILD_PARAM) \
		-t $(PROJECT):$(STR_VERSION)

clean:
	-docker rmi $$(docker images -q "$(PROJECT)-buildimage" -f "label=autodelete=true")

purge:
	-docker rmi $(PROJECT):v$(VERSION)
