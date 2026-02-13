cluster_name := "my-vcluster"

set-driver:
  vcluster use driver docker

create-cluster:
  vcluster create {{ cluster_name }} -f vcluster.yaml

show-all-resources:
  kubectl get all --all-namespaces

clean-up:
  vcluster delete {{ cluster_name }}

all: set-driver create-cluster show-all-resources clean-up