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


kubectl apply -f ingress.yaml

host example.com
nslookup example.com
dig example.com

# For windows
Resolve-DnsName example.com
C:\Windows\System32\drivers\etc\hosts

kubectl get configmap -n ingress-nginx

kubectl describe configmap ingress-nginx-controller -n ingress-nginx


kubectl exec -it deploy/ingress-nginx-controller -n ingress-nginx -- bash
ingress-nginx-controller-7df9fc45fd-scnpj:/etc/nginx$ ls
ingress-nginx-controller-7df9fc45fd-scnpj:/etc/nginx$ cat nginx.conf