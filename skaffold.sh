cat <<EOF > skaffold.yaml
apiVersion: skaffold/v2beta16
kind: Config
deploy:
kubectl:
manifests:
- kubernetes-app.yaml
EOF

