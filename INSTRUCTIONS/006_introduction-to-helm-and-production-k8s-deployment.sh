mkdir charts

helm create charts/flask-application

helm template backend charts/flask-application
helm template backend charts/flask-application > flask-application.yaml

kubectl apply -f flask-application.yaml

kubectl get pods

kubectl delete -f flask-application.yaml


helm install backend charts/flask-application
helm upgrade backend charts/flask-application


kubectl describe pod backend-flask-applic-84dc95f7f8-jxz6t


kubectl get ingress

helm list


helm upgrade backend charts/flask-application --set image.tag=643e21c

helm history backend

kubectl get pods -o wide

kubectl get deploy -o wide

helm rollback backend 3

helm lint

helm lint charts/flask-application


helm template backend charts/flask-application --set config.LOG_LEVEL=error

helm template backend charts/flask-application -f values-override.yaml

helm upgrade backend charts/flask-application --values values-override.yaml