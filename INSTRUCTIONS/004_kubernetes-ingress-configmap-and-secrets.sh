kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml


kubectl get ns

kubectl get pods -n ingress-nginx

kubectl describe  pods -n ingress-nginx

kubectl get pods -n ingress-nginx --watch


kubectl get pods -n ingress-nginx -o wide

kubectl get svc -n ingress-nginx


# ===============
kubectl port-forward svc/ingress-nginx-controller -n ingress-nginx 80:80


kubectl get deploy -n ingress-nginx

kubectl logs -f deploy/ingress-nginx-controller -n ingress-nginx

kubectl get ingressclass