# Base image
FROM ubuntu:22.04

# Work directory
WORKDIR /app

# VIM
COPY ./vimrc /root
# Build script
COPY ./build_env.sh /root
# COC config
COPY ./coc-settings.json /root/

RUN chmod +x /root/build_env.sh

CMD ["/bin/bash"]
