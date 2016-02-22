# Run wget in a container

# Build if needed
if (!(docker images | Select-String -Pattern ikoula/wget)) {
  docker build -t ikoula/wget -f Dockerfiles\wget\Dockerfile .
  echo `n
}

$cur = (Get-Item -Path ".\" -Verbose).FullName -replace '\\', '/' -replace '^C:/', '/c/'
docker run --rm -it -v "$cur`:$cur" -w $cur ikoula/wget $args
