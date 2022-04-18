mongo-express-statefulset
========

## Usage

1) Create MongoDB using helm release
```
helm install mongodb --values mongodb.yaml Charts/mongodb
```
2) Create Mongo-Express service
```
kubectl apply -f mongo-express.yaml
```
3) Expose the mongo-express-service for internal usage
```
minikube service mongo-express-service
```
4) Get url for accessing service
```
minikube service mongo-express-service --url
```

