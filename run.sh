#!/usr/bin/env bash
set -e

COMPOSE_URL="https://raw.githubusercontent.com/RaghavanSridharan/cert_tracker/main/docker-compose.yml"

# Download docker-compose.yml if not already present
if [ ! -f docker-compose.yml ]; then
  echo "Fetching docker-compose.yml..."
  curl -s -o docker-compose.yml $COMPOSE_URL
fi

echo "Starting Certificate Tracker..."
docker compose up
