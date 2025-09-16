# when i ran
kubectl apply -f deployment.yaml 
# after running , created 3 kind of Resources 
# 1st -> Deployment
# 2nd -> ReplicaSet controle by Deployment
# 3rd -> Pod controle by ReplicaSet

kubectl get pods
kubectl get pods -o wide
# ===================================================

docker exec -it devops-ic-batch-04-control-plane bash
root@devops-ic-batch-04-control-plane:/# ps aux
root@devops-ic-batch-04-control-plane:/# cat /etc/cni/net.d/*

# ========================================================
kubectl get pods --namespace default
kubectl get namespaces

# ========================================================
kubectl get pods --namespace kube-system
# ========================================================
kubectl get daemonset --namespace kube-system



