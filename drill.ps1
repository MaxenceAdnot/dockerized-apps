# Run drill in a container

# Build if needed
if (!(docker images | Select-String -Pattern ikoula/drill)) {
  docker build -t ikoula/drill -f Dockerfiles\drill\Dockerfile .
  echo `n
}

docker run --rm -it ikoula/drill $args
