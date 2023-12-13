#!/bin/bash
if [ -z $(command -v kubectl) ]; then
  echo "kubectl binary not found"
  exit 127
fi
if [ "$1" = "up" ]; then
  kubectl create ns chart-testing-prerequisites
  kubectl create -n chart-testing-prerequisites svc clusterip mqtt --tcp 1883:1883
  kubectl run -n chart-testing-prerequisites mqtt --image emqx/nanomq:0.20.8 -l "app=mqtt"
elif [ "$1" = "down" ]; then
  kubectl delete -n chart-testing-prerequisites pod mqtt
  kubectl delete -n chart-testing-prerequisites svc mqtt
fi