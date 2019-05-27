#!/usr/bin/env bash

echo "Creating all objects :"

kubectl create -f .


echo "Getting all objects :"
kubectl get all
