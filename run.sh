#!/bin/bash
#
# If you want to mount /gscratch just add:
# -v /gscratch:/gscratch
#
source ./vars.sh
CONTAINERNAME="${alias}-x2go"
docker run --rm \
           -it \
           -h $CONTAINERNAME \
           --name $CONTAINERNAME \
           -v $HOME:$HOME \
           -p 2022:2022 \
           $CONTAINERNAME \
           /login.sh
