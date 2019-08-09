#!/bin/bash
export uid=$(id -u)
export did=$(id -g)
export alias=$(whoami|awk -F. '{ print $2 }' )
export domain=$(whoami|awk -F. '{ print $1 }')
