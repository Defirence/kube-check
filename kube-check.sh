#!/usr/bin/sh

CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'

echo "${CYAN}Retrieving Kubernetes namespaces..."
kubectl get ns
echo "${CYAN}Retrieving ${YELLOW}pods ${GREEN}inside all namespaces...${CYAN}"
kubectl get pods --all-namespaces
echo "${CYAN}Retrieving ${YELLOW}deployments ${GREEN}inside all namespaces...${CYAN}"
kubectl get deployments --all-namespaces
echo "${CYAN}Retrieving ${YELLOW}services ${GREEN}inside all namespaces...${CYAN}"
kubectl get services --all-namespaces
echo "${CYAN}Retrieving ${YELLOW}cluster-roles ${GREEN}inside all namespaces...${CYAN}"
kubectl get clusterroles --all-namespaces
exit 0