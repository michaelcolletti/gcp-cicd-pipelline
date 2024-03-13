## Steps 

- Create a Cloud Build configuration file. This file will define the steps that will be executed in your build pipeline.
- Create a Cloud Storage bucket to store your build artifacts.
- Enable Cloud Build for your project.
- Create a trigger that will cause Cloud Build to run your build pipeline.

```
steps:
- name: 'gcr.io/cloud-builders/gcloud'
args: ['build', '-t', 'gcr.io/my-project/my-app:latest', '.']
```


```
steps:
- name: 'gcr.io/cloud-builders/kubectl'
  args: ['set', 'image', 'deployment/mydepl', 'my-image=gcr.io/my-project/myimage']
  env:
  - 'CLOUDSDK_COMPUTE_ZONE=us-east4-b'
  - 'CLOUDSDK_CONTAINER_CLUSTER=my-cluster'
- name: 'gcr.io/cloud-builders/docker'
  args: ['build', '-t', 'gcr.io/my-project-id/myimage', '.']
```

