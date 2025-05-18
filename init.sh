#!/bin/bash
set -e

# 1. Dépendances système
apt-get update
apt-get install -y \
    ffmpeg \
    libsm6 \
    libxext6 \
    libgl1-mesa-glx

# 2. Python & pip à jour
python3 -m pip install --upgrade pip

# 3. PyTorch et bibliothèques ML
python3 -m pip install \
    diffusers transformers accelerate \
    einops lpips \
    opencv-python-headless

# 4. Forcer une version de huggingface_hub compatible
python3 -m pip install huggingface-hub==0.25.2

# 5. Restituer les droits à onyxia
chown -R ${USERNAME}:${GROUPNAME} ${HOME}
