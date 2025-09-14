#!/bin/bash

echo "Criando imagens..."

docker build -t bruno-DAM/projeto-backen:1.0 backend/.
docker build -t bruno-DAM/projeto-backen:1.0 database/.

echo "Realizando o push das imagens..."

docker push bruno-DAM/projeto-backen:1.0 backend/.
docker push bruno-DAM/projeto-backen:1.0 database/.

echo "Criando serviços no cluster kubernetes..."

kubectl apply -f ./services.yaml

echo "Criando os deployments..."

kubectl apply -f ./deployment.yaml
