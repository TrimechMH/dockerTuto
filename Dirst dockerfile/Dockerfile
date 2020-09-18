# use an existing docker image as a base
FROM alpine

# Download and install a dependency
RUN apk add --update gcc
RUN apk add --update redis

# tell the image what to do when it start as a cantainer
CMD ["redis-server"]