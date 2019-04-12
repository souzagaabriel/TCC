# TCC


Criar o namespace cattle-system:

kubectl create ns cattle-system

Criar a chave:

kubectl -n cattle-system create secret tls tls-rancher-ingress \
  --cert=tls.crt \
  --key=tls.key

Install Rancher:

helm install rancher-latest/rancher \
  --name rancher \
  --namespace cattle-system \
  --set hostname=rancherifsc.sj.ifsc.edu.br \
  --set ingress.tls.source=tls-rancher-ingress


Install operator rook

helm repo add rook-stable https://charts.rook.io/stable
helm install --namespace rook-ceph-system rook-stable/rook-ceph

Crate cluster

kubectl create -f rook_conf/cluster.yaml

kubectl -n rook-ceph create secret tls tls-rookceph-ingress --cert=tls.crt --key=tls.key

kubectl create -f rook_conf/dashboard-ingress-https.yaml

kubectl create -f rook_conf/storageclass.yaml
