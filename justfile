cluster_name := "my-vcluster"

set-driver:
  vcluster use driver docker

create-cluster:
  vcluster create {{ cluster_name }} -f vcluster.yaml

show-all-resources:
  kubectl get all --all-namespaces

create-pod:
  kubectl apply -f nginx-pod.yml

wait-for-pod:
  kubectl wait --for=condition=ready pod/nginx-pod --timeout=120s

get-pods:
  kubectl get pods

get-pod-logs:
  kubectl logs pod/nginx-pod

clean-up:
  vcluster delete {{ cluster_name }}

all: set-driver create-cluster show-all-resources create-pod wait-for-pod get-pods get-pod-logs clean-up