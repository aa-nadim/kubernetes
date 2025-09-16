# Kubernetes

https://kubernetes.io/docs/tasks/tools/

## Install and Set Up kubectl on Windows
https://kubernetes.io/docs/tasks/tools/install-kubectl-windows/#install-kubectl-binary-on-windows-via-direct-download-or-curl


## For Local
## kind
https://kind.sigs.k8s.io/docs/user/quick-start/

```
curl.exe -Lo kind-windows-amd64.exe https://kind.sigs.k8s.io/dl/v0.30.0/kind-windows-amd64
```

## Or Minikube
https://minikube.sigs.k8s.io/docs/


## For Deployment / In server
https://kubernetes.io/docs/reference/command-line-tools-reference/kubelet/



## Cluster Creation
```bash

kind create cluster --name devops-ic-batch-04
```

## Kubernaties CLI Tool
https://kubernetes.io/docs/reference/kubectl/



## Node ==like==> EC2

## Pod ====> multiple container (docker container)


## Questions
 - when i lounch pod in Kubernetes, then Do i use Deployment, ReplicaSet, pod use ?
 - Ans => simple = pod, need multiple pods = deployment
 - when we run kubectl, what happen?