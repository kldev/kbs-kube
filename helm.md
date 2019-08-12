# helm basics

Official docs: https://helm.sh/docs/

install helm

download proper binary, add to /usr/local/bin, chmod +x
```
https://github.com/helm/helm/releases
```

init helm client only
```
helm init -c
```

## list installed charts

```
helm ls
```

# install helm

```
kubectl create serviceaccount --namespace kube-system tiller
 
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
 
helm init --service-account tiller
 
kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'
```


# kubectl command

kubectl expose svc/mk-kbs-front  --port=80 --name=kbs-node --type=NodePort

kubectl delete svc/mk-node

kubectl port-forward svc/state-kbs-db 5432:5432

connect from host
```
 psql -U skgijpsbxmxmkruipzfm -d kbs -h 127.0.0.1
```

# update /etc/hosts with minikube ip and ingress host
```
192.168.99.100 kbs-front.io
```

