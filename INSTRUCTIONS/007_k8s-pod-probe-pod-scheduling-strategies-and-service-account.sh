
probe (a.k.a health check) is a diagnostic performed by the kubelet on a container to determine whether it is running and healthy. Kubernetes supports three types of probes: liveness, readiness, and startup probes.

 - startup probe: Used to determine if a container has started. If the startup probe fails, the kubelet will kill the container and try to restart it according to the restart policy. This is useful for applications that have a long initialization time.

 - readiness probe: Used to determine if a container is ready to accept traffic. If the readiness probe fails, the endpoints controller removes the Pod's IP address from the associated Service, so it won't receive any traffic until it passes the readiness check.

 - liveness probe: Used to determine if a container is still running. If the liveness probe fails, the kubelet will kill the container and try to restart it according to the restart policy. This is useful for applications that may hang or become unresponsive.



probe config
 - HTTP health check (API/front-end): The kubelet sends an HTTP GET request to a specified path and port on the container. If the response has a status code between 200 and 399, the probe is considered successful.
 - TCPSocket
 - Custom command check (worker (celery , pm2))





helm list
kubectl get pods

helm upgrade backend charts/flask-application --set image.tag=643e21c

kubectl describe pod backend-flask-applic-6b49cf5864-z2lxv
kubectl describe pod backend-flask-applic-5d5665f5c8-29hbg

helm upgrade backend charts/flask-application


kubectl get pods -w


helm uninstall backend

helm upgrade --install backend charts/flask-application --set image.tag=1.0.0


helm upgrade --install backend charts/flask-application --set image.tag=1.28


docker run --rm -it nginx sh

kubectl describe pod backend-flask-applic-5fffc7d58f-kl4mg

kubectl get nodes --show-labels

kubectl label nodes <node-name> cpu-intensive=true
kubectl label nodes <node-name> memory-intensive=true

kubectl label nodes  devops-ic-batch-04-worker cpu-intensive=true
kubectl label nodes  devops-ic-batch-04-worker2 memory-intensive=true


helm uninstall backend
helm upgrade --install backend charts/flask-application --set image.tag=1.28



## taint and toleration in kubernetes
kubectl taint node devops-ic-batch-04-worker2 app=backend:NoSchedule
kubectl get pods --watch
kubectl get pods --watch -o wide


kubectl describe node devops-ic-batch-04-worker2


kubectl taint node devops-ic-batch-04-worker2 app=backend:NoExecute

# _ Nodeselector not available
# _ Affinity available and matches
# _ Taint tolerations matched
