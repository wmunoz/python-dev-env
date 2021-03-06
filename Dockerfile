#
# Python Dockerfile
#
# https://github.com/dockerfile/python
#

# Pull base image.
FROM ubuntu

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y iputils-ping python python-dev python-pip python3-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /root/dev

# Define default command.
CMD ["bash"]
