#!/bin/bash
set -e

# 1. Mise à jour et installation des paquets nécessaires
apt-get update
apt-get install -y \
    ffmpeg \
    libsm6 \
    libxext6 \
    libgl1-mesa-glx

# 2. Remise des droits à l’utilisateur onyxia
chown -R ${USERNAME}:${GROUPNAME} ${HOME}
