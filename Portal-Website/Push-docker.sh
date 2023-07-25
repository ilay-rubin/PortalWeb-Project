#!/bin/bash

image=$1

docker push $image && docker rmi $image
