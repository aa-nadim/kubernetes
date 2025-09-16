
kubectl get pods
# ===========================================

kubectl apply -f replicaset.yaml
kubectl delete -f replicaset.yaml

# ===========================================

kubectl apply -f deployment.yaml
kubectl get deployments
kubectl get replicaset

# ===========================================

kubectl describe replicaset
kubectl describe replicaset | grep -A 5 "Events:"

# ===========================================

kubectl get pods --watch

# ===========================================

kubectl rollout status deployment/nginx-deployment
kubectl rollout history deployment/nginx-deployment
kubectl rollout undo deployment/nginx-deployment

# ===========================================

kubectl set image deployment/nginx-deployment nginx=nginx:1.27

# ===========================================
# when i ran
kubectl apply -f deployment.yaml 
# after running , created 3 kind of Resources 
# 1st -> Deployment
# 2nd -> ReplicaSet controle by Deployment
# 3rd -> Pod controle by ReplicaSet