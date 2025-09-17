kubectl get pods --watch
# ===================================================
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
kubectl get pods --namespace kube-system -o wide | grep kindnet


# ========================================================
kubectl get daemonset --namespace kube-system

# ========================================================
kubectl apply -f daemonset.yaml 

kubectl delete -f daemonset.yaml 
# ========================================================
kubectl logs -f kindnet-4p925  --namespace kube-system

# ========================================================
kubectl exec -it nginx-deployment-7999557f64-42cww -- bash
root@nginx-deployment-7999557f64-42cww:/# curl 10.244.1.3
root@nginx-deployment-7999557f64-42cww:/# curl -v 10.244.1.3


<ip-adderss>.<namespace>.pod.cluster.local

nslockup

dig <ip-adderss>.<namespace>.pod.cluster.local

dig 10-244-1-3.default.pod.cluster.local

# Quick ways to check DNS inside the pod
# Uses the system resolver
getent hosts 10-244-1-3.default.pod.cluster.local
ping -c1 10-244-1-3.default.pod.cluster.local
root@nginx-deployment-7999557f64-42cww:/# dig +short 10-244-1-3.default.pod.cluster.local
root@nginx-deployment-7999557f64-42cww:/# dig NS 10-244-1-3.default.pod.cluster.local


# ========================================================

kubectl apply -f service.yaml
kubectl get pods --namespace default -o wide
kubectl get services --namespace default

kubectl describe svc nginx-service --namespace default
kubectl get endpoints --namespace default

<service-name>.<namespace>.svc.cluster.local

# ================================
apt update && apt install dns-utils # for dig
