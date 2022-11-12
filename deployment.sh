# Apply env variables and secrets
kubectl apply -f aws-secret.yaml
kubectl apply -f env-secret.yaml
kubectl apply -f env-configmap.yaml
# Deployments - Double check the Dockerhub image name and version in the deployment files
kubectl apply -f backend-feed-deployment.yaml
# Do the same for other three deployment files
kubectl apply -f backend-user-deployment.yaml
kubectl apply -f frontend-deployment.yaml

# Service
kubectl apply -f backend-feed-service.yaml
# Do the same for other three service files
kubectl apply -f backend-user-service.yaml
kubectl apply -f frontend-service.yaml

kubectl apply -f reverseproxy-deployment.yaml
kubectl apply -f reverseproxy-service.yaml