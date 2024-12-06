# Base image
FROM ubuntu:22.04

# Work directory
WORKDIR /app

# VIM
COPY ./vimrc /root


CMD ["/bin/bash"]
