#!/usr/bin/env sh
set -eu
kubectl --context kind-k8s-learning -n argocd get secret argocd-initial-admin-secret -o jsonpath='{.data.password}' | base64 --decode
echo
