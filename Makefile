DEBIAN_TAGS := jessie wheezy

.PHONY: all
all:
	$(foreach tag,$(DEBIAN_TAGS), m4 -D DISTRO=debian -D TAG=$(tag) Dockerfile.m4 > $(tag)/Dockerfile ;)