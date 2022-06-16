#!/usr/bin/env/bash #!/usr/bin/env/zsh #!/usr/bin/env/sh

CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'

printf "${CYAN}Retrieving Kubernetes namespaces...\n"
echo "\n"
kubectl get ns
sleep 1
echo "\n"
printf "${CYAN}Retrieving ${YELLOW}pods ${GREEN}inside all namespaces...${CYAN}\n"
kubectl get pods --all-namespaces
sleep 1
echo "\n"
printf "${CYAN}Retrieving ${YELLOW}deployments ${GREEN}inside all namespaces...${CYAN}\n"
kubectl get deployments --all-namespaces
sleep 1
echo "\n"
printf "${CYAN}Retrieving ${YELLOW}services ${GREEN}inside all namespaces...${CYAN}\n"
kubectl get services --all-namespaces
sleep 1
echo "\n"
printf "${CYAN}Retrieving ${YELLOW}clusterroles ${GREEN}inside all namespaces...${CYAN}\n"
kubectl get clusterroles --all-namespaces
exit 0