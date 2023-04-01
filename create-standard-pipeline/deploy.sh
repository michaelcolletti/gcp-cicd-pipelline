#!/bin/bash

#

gcloud beta deploy apply --file clouddeploy.yaml \
--region=us-central1 --project=$PROJECT_ID

