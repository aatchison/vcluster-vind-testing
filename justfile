cluster_name := "my-vcluster"

set-driver:
  vcluster use driver docker

create-cluster:
  vcluster create {{ cluster_name }} -f vcluster.yaml

clean-up:
  vcluster delete {{ cluster_name }}