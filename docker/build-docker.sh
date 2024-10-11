#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-datromax/datromaxd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/datromaxd docker/bin/
cp $BUILD_DIR/src/datromax-cli docker/bin/
cp $BUILD_DIR/src/datromax-tx docker/bin/
strip docker/bin/datromaxd
strip docker/bin/datromax-cli
strip docker/bin/datromax-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
