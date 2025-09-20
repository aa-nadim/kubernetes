## Step - 001
i want to learn k8s. so i installed in my windows docker desktop , kind for kubernetes.

now i want to create/launch a cluster called "nadim-cluster" where i have 2 workers node called "nadim-worker-node-01" and "nadim-worker-node-02"

please give the complete instruction  with cli and more

## Stup - 002
in my cluster i want 1 controlplane and 2 workers nodes

### Create Your Cluster
```bash
kind create cluster --config nadim-cluster-config.yaml
```
### Verify the Cluster Structure
```bash
# Check cluster is created
kind get clusters

# Verify nodes (should show 3 nodes total)
kubectl get nodes

# See detailed node information
kubectl get nodes -o wide
```
### Label Your Worker Nodes for Easy Identification
```bash
# Get the exact worker node names
kubectl get nodes --no-headers | grep -v control-plane

# Label the worker nodes (replace with actual node names from above command)
kubectl label nodes nadim-cluster-worker node-name=nadim-worker-node-01
kubectl label nodes nadim-cluster-worker2 node-name=nadim-worker-node-02

# Verify labels
kubectl get nodes --show-labels
```

### Test Your Cluster
```bash
# Deploy a test application across your nodes
kubectl create deployment nginx-test --image=nginx:latest --replicas=4

# Check pod distribution across nodes
kubectl get pods -o wide

# You should see pods distributed across your 3 nodes (including control-plane if you allow it)
```

### Verify Your Cluster Architecture
```bash
# Check cluster info
kubectl cluster-info --context kind-nadim-cluster

# Count nodes by role
kubectl get nodes --no-headers | wc -l  # Should show 3
kubectl get nodes --no-headers | grep control-plane | wc -l  # Should show 1  
kubectl get nodes --no-headers | grep -v control-plane | wc -l  # Should show 2
```

### Quick Status Check Commands
```bash
# Overview of your cluster
echo "=== Cluster Overview ==="
kubectl get nodes
echo ""
echo "=== Control Plane ==="
kubectl get nodes -l node-role.kubernetes.io/control-plane
echo ""  
echo "=== Worker Nodes ==="
kubectl get nodes -l '!node-role.kubernetes.io/control-plane'
```

### See Nodes
```bash
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
```