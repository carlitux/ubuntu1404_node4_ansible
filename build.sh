#!/bin/bash -e
VERSION=`cat VERSION`
TAG="shippableimages/ubuntu1404_nodejs:$VERSION"
echo "Building $TAG"
docker build --rm -t $TAG .
