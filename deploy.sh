#!/bin/bash

# 1. Create a unique version tag for each deployment (using a timestamp)
TAG=$(date +%Y%m%d%H%M%S)

# 2. Build the Docker image with the new tag
echo "Building Docker image with tag $TAG..."
docker build -t antaratalapatra/react-vite-app:$TAG .

# 3. Push the image to Docker Hub
echo "Pushing Docker image $TAG to Docker Hub..."
docker push antaratalapatra/react-vite-app:$TAG

# 4. Update the docker-compose.yml file with the new image tag
echo "Updating docker-compose.yml to use image $TAG..."
sed -i "s|antaratalapatra/react-vite-app:.*|antaratalapatra/react-vite-app:$TAG|" docker-compose.yml

# 5. Pull the image (to refresh Docker Desktop UI)
echo "Pulling the new image to refresh Docker Desktop..."
docker pull antaratalapatra/react-vite-app:$TAG

# 6. Deploy the new stack
echo "Deploying the stack..."
docker stack deploy -c docker-compose.yml react-vite-app

# 7. Output confirmation
echo "Deployment completed successfully with image tag $TAG."
