================================= Installition =============================
https://kubernetes.io/docs/reference/kubectl/generated/kubectl_config/kubectl_config_current-context/

kubectl version
cat ~/.kube/config
kubectl config current-context
kubectl cluster-info 

============================================================================
kind create cluster --name devops-ic-batch-04
docker exec -it devops-ic-batch-04-control-plane bash
root@devops-ic-batch-04-control-plane:/# ps -ef

============================================================================
kubectl get nodes
kind get clusters
kind delete cluster --name devops-ic-batch-04
kind get clusters
kind create cluster --config cluster-config.yaml --name devops-ic-batch-04

kind get clusters
kubectl get nodes
kubectl get nodes -o  json
kubectl get nodes -o yaml
kubectl get nodes -o wide
kubectl get nodes -o wide -v=8
kubectl get nodes -v=8

kubectl apply -f pod.yaml -v=8
kubectl get pods
kubectl describe pod my-first-pod

kubectl describe pod my-first-pod | grep 'Events:'
kubectl describe pod my-first-pod | grep -A 10 'Events:'

docker ps
docker exec -it 9e7caea64f2a bash

============================================================================
https://127.0.0.1:13916/api/v1/nodes?limit=500

kubectl apply -f pod.yaml -v=8







