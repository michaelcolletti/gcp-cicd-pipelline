#!/bin/bash
echo $PROJECT_ID

gcloud projects add-iam-policy-binding $PROJECT_ID --member=user:$SA  --role='Service Account User'
