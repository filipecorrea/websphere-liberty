#!/bin/bash

# Stop Docker container
docker stop websphere-liberty

# Remove Docker container
docker rm websphere-liberty

# Remove all untagged images
docker rmi $(docker images -q --filter "dangling=true")

# Build
docker build -t filipecorrea/websphere-liberty .

# Run
docker run --name websphere-liberty -d -p 80:9080 filipecorrea/websphere-liberty
