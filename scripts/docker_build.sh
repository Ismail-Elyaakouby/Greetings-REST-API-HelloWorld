#!/bin/bash

usage() {
    echo "Usage: $0 --docker_image_name <image_name> --tag_version <version> --docker_repo_name <repo_name>"
    exit 1
}

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case "$1" in
        --docker_image_name)
            docker_image_name=$2
            shift 2
            ;;
        --tag_version)
            tag_version=$2
            shift 2
            ;;
        --docker_repo_name)
            docker_repo_name=$2
            shift 2
            ;;
        *)
            usage
            ;;
    esac
done

# Check if required arguments are provided
if [[ -z $docker_image_name || -z $tag_version || -z $docker_repo_name ]]; then
    usage
fi

# Displaying arguments
echo "Docker Image Name: $docker_image_name"
echo "Tag Version: $tag_version"
echo "Docker Repo Name: $docker_repo_name"

echo "Building and registering Docker image for $docker_image_name with tag $tag_version and pushing to repository $docker_repo_name..."

# Build the Docker image
docker build -t $docker_image_name:$tag_version .

# Tag and Push the Docker image
docker tag $docker_image_name:$tag_version $docker_repo_name/$docker_image_name:$tag_version
docker push $docker_repo_name/$docker_image_name:$tag_version

echo "Process completed."
