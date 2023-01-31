#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t sklearn-project-app .

# Step 2: 
# List docker images
docker image list 

# Step 3: 
# Run flask app
# docker run -d -p 8000:80 sklearn-project-app
docker run -it -p 8000:80 sklearn-project-app
