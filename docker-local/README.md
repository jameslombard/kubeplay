# Docker local

Run an small `alpine linux` container locally as testing sandbox for client side interactions with cluster:

```
docker run -it --rm -v ${HOME}:/root/ -v ${PWD}:/work -w /work --net host alpine sh
```

