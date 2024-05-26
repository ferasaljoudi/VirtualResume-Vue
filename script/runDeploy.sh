#!/bin/bash

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FRONTEND_DIR="$SCRIPT_DIR/../frontend"
BACKEND_DIR="$SCRIPT_DIR/../backend"
ROOT_DIR="$SCRIPT_DIR/../"

echo "Going into Frontend..."
cd "$FRONTEND_DIR"

echo "Installing Frontend Dependencies..."
npm i

echo "Building the Frontend..."
npm run build

echo "Going into Backend..."
cd "$BACKEND_DIR"

if [ -d "dist" ]; then
  echo "Removing existing dist directory in backend..."
  rm -rf dist
fi

echo "Copying Dist from Frontend..."
cp -R "$FRONTEND_DIR/dist" .

echo "Deleting Dist from Frontend..."
rm -rf "$FRONTEND_DIR/dist"

echo "Installing Backend Dependencies..."
npm i

echo "Changing to Root..."
cd "$ROOT_DIR"

echo "Building Docker Compose File..."
docker-compose build

echo "Loging in to Docker"
docker login

echo "Tagging Image"
docker tag virtualresume-virtualresume ferasaljoudi/virtualresume:latest

echo "Pushing Image"
docker push ferasaljoudi/virtualresume:latest

echo "Deleting Images"
docker rmi -f $(docker images -q)