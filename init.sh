#!/bin/bash
set -e

# 1. Mise à jour et paquets système (les plus indispensables)
apt-get update
apt-get install -y \
    ffmpeg \
    libsm6 \
    libxext6

# 2. Instal’ Python “headless”
python3 -m pip install --upgrade pip
python3 -m pip install opencv-python-headless

# 3. Rétablir droits
chown -R ${USERNAME}:${GROUPNAME} ${HOME}
