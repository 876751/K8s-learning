#!/usr/bin/env sh
set -eu
kubectl --context kind-k8s-learning -n argocd port-forward svc/argocd-server 8080:443
