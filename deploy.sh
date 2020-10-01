#!/usr/bin/env bash
docker build -t mhtrimech/k8s-complex-client:latest -t mhtrimech/k8s-complex-client:$SHA -f ./k8s-complex/client/Dockerfile ./k8s-complex/client
docker build -t mhtrimech/k8s-complex-server:latest -t mhtrimech/k8s-complex-server:$SHA -f ./k8s-complex/server/Dockerfile ./k8s-complex/server
docker build -t mhtrimech/k8s-complex-worker:latest -t mhtrimech/k8s-complex-worker:$SHA -f ./k8s-complex/worker/Dockerfile ./k8s-complex/worker

docker push mhtrimech/k8s-complex-client:latest
docker push mhtrimech/k8s-complex-server:latest
docker push mhtrimech/k8s-complex-worker:latest

docker push mhtrimech/k8s-complex-client:$SHA
docker push mhtrimech/k8s-complex-server:$SHA
docker push mhtrimech/k8s-complex-worker:$SHA

kubectl apply -f ./k8s-complex/k8s
kubectl set image deplyment/client-deployment client=mhtrimech/k8s-complex-client:$SHA
kubectl set image deplyment/server-deployment server=mhtrimech/k8s-complex-server:$SHA
kubectl set image deplyment/worker-deployment worker=mhtrimech/k8s-complex-worker:$SHA