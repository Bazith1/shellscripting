#!/bin/bash

#################
#
#Author: Bazith
#Date : 8-07-2024
#
#
#this script output the node health
#
#version V1
###################



set -x
set -e
set -o pipefail

df -h

free -m

nproc

top 

ps -ef | grep python3 | awk '{print $2}'

