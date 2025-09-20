kubectl get nodes

kubectl apply -f config-map-example.yaml

kubectl get configmap

kubectl get configmap game-demo

kubectl describe configmap game-demo


kubectl get configmap game-demo -o yaml


kubectl apply -f pod.yaml
kubectl describe pods configmap-demo-pod


kubectl apply -f deployment.yaml
kubectl get statefulset
kubectl get pods

kubectl get pod/web-0