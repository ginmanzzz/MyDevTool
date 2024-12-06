# !/bin/bash

HOST_WORK_DIR="$HOME/dockerworkdir"
WORK_DIR="/app"
IMG_NAME="ubuntu_img"
CON_NAME="ubuntu_con"

# 1. Proxy the docker pull request
export HTTP_PROXY=http://localhost:7890
export HTTPS_PROXY=https://localhost:7890

# 2. Build image
docker build -t $IMG_NAME .

# 3. Build container
docker run -it -v $HOST_WORK_DIR:$WORK_DIR --name $CON_NAME $IMG_NAME
