FROM ubuntu:19.04 as build
MAINTAINER EvillHood
ENV DEBIAN_FRONTEND=noninteractive

# Install vnc, xvfb in order to create a 'fake' display
#############
RUN apt-get update && apt-get install -y x11vnc xvfb twm mc 

# map /source to host source data path (used to )
VOLUME /source

# map /data to host defined data path (used to store data from app)
VOLUME /data

# run
CMD ["/bin/bash"]
