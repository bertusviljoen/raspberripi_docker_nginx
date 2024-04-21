#!/bin/bash

# Path to the version file
VERSION_FILE="version.txt"

# Check if the version file exists
if [ ! -f "$VERSION_FILE" ]; then
  echo "0" > "$VERSION_FILE"
  echo "Version file created, starting at 0."
fi

# Read the current version
CURRENT_VERSION=$(cat "$VERSION_FILE")

# Increment the version
NEW_VERSION=$((CURRENT_VERSION + 1))

# Update the version in the file
echo $NEW_VERSION > "$VERSION_FILE"

echo "Version updated from $CURRENT_VERSION to $NEW_VERSION."

# Docker image name
IMAGE_NAME="aifrikkie"

# Build the Docker image with the new version tag
docker build -t "$IMAGE_NAME:$NEW_VERSION" -t "$IMAGE_NAME:latest" .

echo "Docker image built: $IMAGE_NAME:$NEW_VERSION"
