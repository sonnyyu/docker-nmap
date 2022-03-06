ARG ALPINE_TAG=latest
FROM alpine:${ALPINE_TAG}
MAINTAINER Sonny Yu <sonnyyuirm@gmail.com>

# build initial cache | install binary | remove cache
RUN apk update && apk add \
	nmap nmap-scripts nmap-nselibs \
	&& rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/nmap"]
