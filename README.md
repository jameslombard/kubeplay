# Kubeplay

Project for working on Kubernetes best practices and testing out open source tooling.

## Generic light-weight client

``` sh
docker run -it --rm -v ${HOME}:/root/ -v ${PWD}:/work -w /work --net host alpine sh

# install curl & kubectl
apk add --no-cache curl vim
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl
export KUBE_EDITOR="vim"
```


```sh
#test cluster access:
/work # kubectl get nodes
NAME                    STATUS   ROLES    AGE   VERSION
velero-control-plane   Ready    master   26m   v1.18.4
```