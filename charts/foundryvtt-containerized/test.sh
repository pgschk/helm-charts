#!/bin/bash
set -e  # fail whenever a cmd fails

OK_STRING="\e[42m[OK]\e[0m"
FAIL_STRING="\e[41m[FAIL]\e[0m"

INSTALL_ID=$(uuidgen)

# Install the chart, wait a bit and remove it.
# Because the container does not work without a valid FoundryVTT download URL,
# we can't test for a working container.
helm install foundryvtt-${INSTALL_ID} .
echo -e "${OK_STRING} Chart installed"
sleep 10
helm uninstall foundryvtt-${INSTALL_ID}
echo -e "${OK_STRING} Chart uninstalled"
kubectl delete pvc foundryvtt-data foundryvtt-install
echo -e "${OK_STRING} PVCs cleaned up"
