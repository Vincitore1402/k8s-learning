k8s-learning
========

Docker, minikube and kubectl installed are required

1. kubectl apply -f mongo-express-autoscale/mongo-secret.yaml
2. kubectl apply -f mongo-express-autoscale/mongo.yaml
3. kubectl apply -f mongo-express-autoscale/mongo-configmap.yaml
4. kubectl apply -f mongo-express-autoscale/mongo-express.yaml
5. kubectl apply -f mongo-express-autoscale/metrics.yaml
6. kubectl autoscale deployment mongo-express-deployment --cpu-percent=50 --min=1 --max=5


