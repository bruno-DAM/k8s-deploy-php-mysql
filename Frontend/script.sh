#!/bin/bash

echo "Criando imagens..."

docker build -t bruno-DAM/projeto-backend:1.0 backend/.
docker build -t bruno-DAM/projeto-database:1.0 database/.

echo "Realizando o push das imagens..."

docker push bruno-DAM/projeto-backend:1.0
docker push bruno-DAM/projeto-database:1.0

echo "Criando serviços no cluster kubernetes..."

kubectl apply -f ./services.yaml

echo "Criando os deployments..."

kubectl apply -f ./deployment.yaml
