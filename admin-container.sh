#!/bin/bash
set -e
echo "CAUTION. You have privileged access to the nodes filesystem. Be CAREFUL!!!!"
echo "Gaining access to node: $1..."
trap "kubectl delete pod busybox --now" EXIT
cat "pod.yaml" | sed "s/nodeName: .*/nodeName: $1/" | kubectl apply -f -
kubectl wait --for=condition=Ready pod/busybox
kubectl exec -it busybox -- sh
