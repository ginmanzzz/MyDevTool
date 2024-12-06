# !/bin/bash

HOST_WORK_DIR="$HOME/work_dir"
WORK_DIR="/app"
IMG_NAME="ubuntu_img"
CON_NAME="ubuntu_con"

# 1. Build image
docker build -t $IMG_NAME .

# 2. Build container
docker run -it -v $HOST_WORK_DIR:$WORK_DIR --name $CON_NAME $IMG_NAME
