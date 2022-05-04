echo "Cleaning resources up..."

kubectl delete -f cats-api.yaml

helm uninstall postgresql

docker image rm cats-api:0.0.1

echo "Done!"
