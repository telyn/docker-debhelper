FROM DISTRO:TAG
MAINTAINER telyn <telyn@aetheria.co.uk>

RUN apt-get update && apt-get install -y devscripts debhelper
