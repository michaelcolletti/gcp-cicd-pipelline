# How to Create a Small Pipeline in Google Cloud Platform

- Inspired and informed by cool quicklabs scripts
- First, create a build pipline declaratively via a yaml Build [cloudbuild.yaml](./cloudbuild.yaml) invoke the shell script that builds this artifact. 
- This step will push the container image to Artifact Registry and create release in Google Cloud Deploy. Notice the gcloud API used here as endpoint.
```bash
cloudbuild.sh 
```
- Second step is to create a deployment within your pipelene . This is done declaratively as well with the [deployment.sh](./deployment.sh) that will create the kubernetes cluster definitions that will run your deployment/kubernetes manifest. Three stages are createid: **dev, staging and prod**
```
clouddeploy.sh
```
- Next step is to create the file to run your kubenetes deployment. Here, [Skaffold](https://skaffold.dev/) is used. A declarative skaffold.yaml will be created. 
- Files can be added as well. In this example kubernetes-app.yaml is provided as a deploument to be run on the clusters
```
skaffold.sh
```
- Create your manifest with
```
create-manifest.sh
```

- The last step is to run your deployment file. Submit to cloud Deploy using this script.

```
deploy.sh
```
- The following is run ` gcloud beta deploy apply --file clouddeploy.yaml dd --region=us-central1 --project=$PROJECT_ID`

### Todo
- Todo: Script to Copy out deployments and build files to a bucket and validation scripts

