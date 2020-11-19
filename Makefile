DEBIAN_TAGS := jessie stretch buster bullseye

.PHONY: all
all: $(patsubst %, Dockerfile.%, $(DEBIAN_TAGS))

Dockerfile.%: template.dockerfile
	sed -e 's/DISTRO/debian/' -e 's/TAG/$(patsubst Dockerfile.%,%, $@)/' < $< > $@
