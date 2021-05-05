# Alpine with curl
#
# To build this image, run:
#
#   docker login
#   docker build . -t {dockerhub_username}/{tag_key}:{tag_value}
#   docker push {dockerhub_username}/{tag_key}:{tag_value}
FROM alpine:3.13.5
#   LABEL
LABEL maintainer="michael.pfeiffer@bd.so.ch"
LABEL version="0.1"
LABEL description="This is a custom image with CURL installed" 
#   Set Working directory
WORKDIR /root
#   Update repos and install curl, upgrade OS
RUN apk --no-cache add curl

ENTRYPOINT ["/usr/bin/curl"]
