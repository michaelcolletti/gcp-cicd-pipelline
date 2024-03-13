#!/bin/bash -x

# configure environment variables with project id and zone
export PROJECT_ID=$(gcloud config get-value project)
export ZONE=us-east1-a
