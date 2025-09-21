#!/usr/bin/env bash
set -e

# Download docker-compose.yml if not already present
if [ ! -f docker-compose.yml ]; then
  echo "Fetching docker-compose.yml..."
  curl -s -O https://raw.githubusercontent.com/basics89/cert-tracker/main/docker-compose.yml
fi

echo "Starting Certificate Tracker..."
docker compose up

