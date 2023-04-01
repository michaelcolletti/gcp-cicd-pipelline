#!/bin/bash
#
#
#
printf "First init your repo and correct set your global values for your Git user \n"


```
git init
git config --global user.email "you@example.com"
git config --global user.name "Student"
```

- Add the work in the present working directory (.) to staging (via a commit and helpful comment): 
```
git add .
git commit -m "Initial commit and helpful specific comment"
```

- Create a new helloworld Git repository in your Cloud repository:
```
gcloud source repos create helloworld
```
- Create a remote *to-google* for your repo 
```
git remote add to-google https://source.developers.google.com/p/$PROJECT_ID/r/helloworld
```

