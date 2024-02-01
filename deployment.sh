# set context to application-cluster
KUBE_CONTEXT="kind-application-cluster"
kubectl config use-context "$KUBE_CONTEXT"

# deploy calico operator from tigera manifests
echo "deploy calico operator..."
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.27.0/manifests/tigera-operator.yaml

# deploy calico crds from tigera manifests
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.27.0/manifests/custom-resources.yaml

echo "Calico operator and resources deployed successfully in namespace tigera operator of context '$KUBE_CONTEXT'."