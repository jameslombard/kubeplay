# Kind: Tool for spinning up local Kubernetes test clusters

- kind: https://kind.sigs.k8s.io/
- Install with yay -S kind-bin
- User guide: https://kind.sigs.k8s.io/docs/user/quick-start

# Pre-requisites:

- kubectl
- k9s

## Kind cluster commands

- Create cluter: 

```sh
kind create cluster --config=config.yaml --name kind
```

Basic workflow:

```sh
docker build -t my-custom-image:unique-tag ./my-image-dir
kind load docker-image my-custom-image:unique-tag
kubectl apply -f my-manifest-using-my-image:unique-tag
docker exec -it my-node-name crictl images
```

## Ingress

``` sh
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
kubectl wait --namespace ingress-nginx \
  --for=condition=ready pod \
  --selector=app.kubernetes.io/component=controller \
  --timeout=90s
```

## MetalLB

```sh
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.13.7/config/manifests/metallb-native.yaml
kubectl wait --namespace metallb-system \
                --for=condition=ready pod \
                --selector=app=metallb \
                --timeout=90s

docker network inspect -f '{{.IPAM.Config}}' kind

Output: 


Use output to configure LB IP range:



```


