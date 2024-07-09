# Description: Useful commands for k8s

# Get all - examples
kubectl get pods
kubectl get services
kubectl get deployments
kubectl get configmaps
kubectl get pods --all-namespaces

# Get into a pod
kubectl exec -it pod-name -- /bin/bash

# Get logs from a pod
kubectl logs pod-name
kubectl logs -f pod-name
kubectl logs -f --timestamps pod-name

# Describe a pod
kubectl describe pod pod-name

# Get service as yaml
kubectl get svc service-name -o yaml > my-service.yaml

# Edit deployment on the fly (not recommended, should be done via yaml file and kubectl apply -f file.yaml)
kubectl edit deployment deployment-name

# Get resource usage
kubectl addons enable metrics-server # (alternatively kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml)
kubectl top pod

# Minikube dashboard
minikube dashboard
