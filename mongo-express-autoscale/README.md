mongo-express-autoscale
========

## Usage

Start minikube (may take some time for initial run)
```$xslt
minikube start
```

Run secret where username and password data for MongoDB access is stored
```$xslt
kubectl apply -f mongo-secret.yaml
```

Run MongoDB deployment/service itself

```$xslt
kubectl apply -f mongo.yaml
```

Run ConfigMap where MongoDB connection url is stored

```$xslt
kubectl apply -f mongo-configmap.yaml
```

Run mongo-express deployment/service

```$xslt
kubectl apply -f mongo-express.yaml
```

Run metrics deployment - this is needed for getting data about CPU/memory usage on other pods

```$xslt
kubectl apply -f metrics.yaml
```

Run autoscale for mongo-express deployment depending on CPU usage

```$xslt
kubectl autoscale deployment mongo-express-deployment --cpu-percent=50 --min=1 --max=5
```

Expose the mongo-express-service for internal usage

```$xslt
minikube service mongo-express-service
```



