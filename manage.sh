#! /bin/bash

USERNAME=himenon
COMMAND=$1
TARGET_DIR=$2

case $COMMAND in
build)
    if [[ -z "$2" ]]; then
        echo "存在するディレクトリを指定して下さい。"
        exit 1
    fi
    TARGET=$(basename $TARGET_DIR)
    docker build $TARGET_DIR -t $USERNAME/$TARGET
    echo "-------- next action --------"
    echo "1. docker run --rm $USERNAME/$TARGET"
    echo "2. docker push $USERNAME/$TARGET"
    ;;
push)
    TARGET=$(basename $TARGET_DIR)
    docker push $USERNAME/$TARGET
    ;;
esac
