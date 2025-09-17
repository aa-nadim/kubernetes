# Kubernetes

## Node ==like==> EC2

## Pod ====> multiple container (docker container)

## CNI == gives the IP in cluster

## Services
1. ClusterIP (default)
2. NodePort (superset of ClusterIP)
3. LoadBalancer (superset of NodePort) # METALLB
4. ExternalName (superset of LoadBalancer)

## Questions
 - when i lounch pod in Kubernetes, then Do i use Deployment, ReplicaSet, pod use ?
 - Ans => simple = pod, need multiple pods = deployment
 - when we run kubectl, what happen?