#!/bin/bash

# Checking the Git branch
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    ./scripts/build.sh

    # Login to Docker Hub (replace with your actual Docker Hub credentials)
    docker login -u karthikeyan9506 -p $DOCKER_PASSWORD

  
    # Tag the image
    docker tag reactapp karthikeyan9506/dev:reactapp

    # Push the image to the Dev Docker Hub repository
    docker push karthikeyan9506/dev:reactapp

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    # Build your project
    ./scripts/build.sh

    # Login to Docker Hub (replace with your actual Docker Hub credentials)
    docker login -u karthikeyan9506 -p $DOCKER_PASSWORD

   
    # Tag the image
    docker tag reactapp karthikeyan9506/prod:reactapp

    # Push the image to the Prod Docker Hub repository
    docker push karthikeyan9506/prod:reactapp
else
    echo "Deployment error"
fi
