[WIP] zero-downtime-db-migration 
========
## Usage

* Create Postgres using helm release
```
helm install postgresql --values postgresql.yaml Charts/postgresql
```

* Build cats-api Docker image
```
docker build --no-cache -t cats-api:0.0.1 cats-api/
```

* Load image to Minikube
```
minikube image load cats-api:0.0.1
```

* Create Cats-API service
```
kubectl apply -f cats-api.yaml
```

* Expose the Cats-API service for internal usage and get url for accessing service
```
minikube service cats-api-service --url
```
