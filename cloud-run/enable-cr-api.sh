#!/bin/bash
#
#
#

export PROJECT_ID=$(gcloud config get-value project)
export ZONE=us-east1-a

EnableSvc ()
	{
gcloud services enable \
    run.googleapis.com \
    --project=$PROJECT_ID

}
