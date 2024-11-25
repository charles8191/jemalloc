# jemalloc binary 

This is a containerized build tool that builds the very latest jemalloc from Git every Monday, using the Red Hat UBI 9 container. It automatically uploads via CI. There is also a container artifact if you'd like to build it yourself:

```bash
mkdir out
podman run -v "$(pwd)/out":/out ghcr.io/charles8191/jemalloc/artifact 
```

## Demo

```bash
wget https://github.com/charles8191/jemalloc/raw/refs/heads/main/libjemalloc.so
LD_PRELOAD=./libjemalloc.so /bin/echo "Hello, world!"
```
