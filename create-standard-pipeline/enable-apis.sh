#!/bin/bash
# Enable required services for build registry and clouddeploy
gcloud services enable serviceusage.googleapis.com \
container.googleapis.com \
cloudbuild.googleapis.com \
artifactregistry.googleapis.com \
clouddeploy.googleapis.com \
cloudresourcemanager.googleapis.com
