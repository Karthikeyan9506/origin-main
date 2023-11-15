#!/bin/bash

# Checking the Git branch
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    ./build.sh

    # Login to Docker Hub (replace with your actual Docker Hub credentials)
    docker login -u karthikeyan9506 -p dckr_pat_S24xwX_73dmdhHpTqKr-3UVNqds

  
    # Tag the image
    docker tag react-appimg karthikeyan9506/dev

    # Push the image to the Dev Docker Hub repository
    docker push karthikeyan9506/dev

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    # Build your project
    ./build.sh

    # Login to Docker Hub (replace with your actual Docker Hub credentials)
    docker login -u karthikeyan9506 -p dckr_pat_S24xwX_73dmdhHpTqKr-3UVNqds

   
    # Tag the image
    docker tag react-appimg karthikeyan9506/prod 

    # Push the image to the Prod Docker Hub repository
    docker push karthikeyan9506/prod
else
    echo "Deployment error"
fi
