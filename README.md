# TCC

Criando o cluster kubernetes:
```$ rke up```

Habilitando o uso do helm:

```$ kubectl -n kube-system create serviceaccount tiller```

```$ kubectl create clusterrolebinding tiller \
  --clusterrole=cluster-admin \
  --serviceaccount=kube-system:tiller```

```$ helm init --service-account tiller```

Instalando o Rancher:

```$ kubectl create ns cattle-system```

Criar a chave:

```$ kubectl -n cattle-system create secret tls tls-rancher-ingress \
  --cert=tls.crt \
  --key=tls.key```

$ ```helm install rancher-latest/rancher \
  --name rancher \
  --namespace cattle-system \
  --set hostname=rancherifsc.sj.ifsc.edu.br \
  --set ingress.tls.source=tls-rancher-ingress```


Instalando o rook:

```$ kubectl create -f rook_conf/common.yaml```

```$ kubectl create -f rook_conf/operator.yaml```

```$ kubectl create -f rook_conf/cluster.yaml```

kubectl -n rook-ceph create secret tls tls-rookceph-ingress --cert=tls.crt --key=tls.key

kubectl create -f rook_conf/dashboard-ingress-https.yaml

kubectl create -f rook_conf/storageclass.yaml
