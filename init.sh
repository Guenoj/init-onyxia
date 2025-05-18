#!/bin/bash
set -e

apt-get update
apt-get install -y ffmpeg libsm6 libxext6
chown -R ${USERNAME}:${GROUPNAME} ${HOME}
