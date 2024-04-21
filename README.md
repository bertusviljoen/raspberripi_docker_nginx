# Raspberry Pi Docker Nginx Setup
## Overview
This repository provides the necessary Docker configuration files and Nginx setup to deploy web services on a Raspberry Pi using Docker.

# Features
Dockerfile and docker-compose configurations for easy deployment.
Custom Nginx configuration for optimized web service handling.
# Requirements
Raspberry Pi with Docker installed.
Basic knowledge of Docker and Nginx configurations.
# Setup
Clone the repo and run docker-compose to build and start the services.



#To update the docker image
After updating the Dockerfile run the script `increment_build_version.sh` to build and increment the image version tag.

Ensure the file is executable:
`chmod +x increment_build_version.sh`
