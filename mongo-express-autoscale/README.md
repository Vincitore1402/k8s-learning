mongo-express-autoscale
========


## Application schema

![text](https://github.com/Vincitore1402/k8s-learning/blob/master/mongo-express-autoscale/images/schema.png)

## Usage

1) Start minikube (may take some time for initial run)
```$xslt
minikube start
```

2) Run secret where username and password data for MongoDB access is stored
```$xslt
kubectl apply -f mongo-secret.yaml
```

3) Run MongoDB deployment/service itself

```$xslt
kubectl apply -f mongo.yaml
```

4) Run ConfigMap where MongoDB connection url is stored

```$xslt
kubectl apply -f mongo-configmap.yaml
```

5) Run mongo-express deployment/service

```$xslt
kubectl apply -f mongo-express.yaml
```

6) Run metrics deployment - this is needed for getting data about CPU/memory usage on other pods

```$xslt
kubectl apply -f metrics.yaml
```

7) Run autoscale for mongo-express deployment depending on CPU usage

```$xslt
kubectl autoscale deployment mongo-express-deployment --cpu-percent=50 --min=1 --max=5
```

8) Expose the mongo-express-service for internal usage

```$xslt
minikube service mongo-express-service
```


