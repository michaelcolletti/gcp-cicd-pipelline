#!/bin/bash

#
export PROJECT_ID=$(gcloud config get-value project)
export ZONE=us-east1-a

gcloud beta deploy apply --file clouddeploy.yaml --region=us-central1 --project=$PROJECT_ID
