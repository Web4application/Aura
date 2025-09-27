#!/bin/bash
# inspect_kubuverse.sh
# Run this to inspect what Aura inherits from the Kubuverse image

IMAGE="ghcr.io/web4application/kubuverse@sha256:25f25b85336f0404001537eeb4cad839b5aa27aaaae12818704e9675ae8bc43d"

echo "🔄 Pulling latest Kubuverse image..."
docker pull $IMAGE

echo "🔍 Inspecting image metadata..."
docker buildx imagetools inspect $IMAGE

echo -e "\n🚀 Starting container to inspect runtime environment...\n"

docker run -it --rm $IMAGE bash -c "
  echo '===== OS Info =====' &&
  cat /etc/os-release &&
  echo &&
  
  echo '===== Installed Languages =====' &&
  python3 --version 2>/dev/null || echo 'Python not found' &&
  pip --version 2>/dev/null || echo 'Pip not found' &&
  node -v 2>/dev/null || echo 'Node.js not found' &&
  npm -v 2>/dev/null || echo 'npm not found' &&
  go version 2>/dev/null || echo 'Go not found' &&
  rustc --version 2>/dev/null || echo 'Rust not found' &&
  java -version 2>/dev/null || echo 'Java not found' &&
  echo &&

  echo '===== Python Packages (Top 20) =====' &&
  pip list | head -20 || echo 'No Python packages detected' &&
  echo &&

  echo '===== GPU / CUDA Info =====' &&
  nvidia-smi || echo 'No NVIDIA GPU detected in container' &&
  echo &&

  echo '===== Environment Variables =====' &&
  printenv | sort &&
  echo &&

  echo '===== PATH =====' &&
  echo \$PATH &&
  echo &&

  echo '===== Default User =====' &&
  whoami &&
  echo &&

  echo '===== Exposed Ports =====' &&
  cat /proc/1/environ | tr '\\0' '\\n' | grep PORT || echo 'No explicit port found' &&
  echo
"
