echo "Deploying postgresql using helm..."

helm install postgresql --values postgresql.yaml Charts/postgresql

echo "Building cats-api Docker image..."

docker build --no-cache -t cats-api:0.0.1 cats-api/

echo "Loading Docker image to Minikube..."

minikube image load cats-api:0.0.1

echo "Deploying cats-api using kubectl..."

kubectl apply -f cats-api.yaml

echo "Almost, done! Getting cats-api service url..."

minikube service cats-api-service --url
