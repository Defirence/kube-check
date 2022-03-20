#!/bin/bash
kubectl get ns && kubectl get pods --all-namespaces && kubectl get deployments --all-namespaces && kubectl get services --all-namespaces && kubectl get clusterroles --all-namespaces
