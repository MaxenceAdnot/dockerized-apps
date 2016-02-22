# Run python in a container

# Build if needed
if (!(docker images | Select-String -Pattern ikoula/python)) {
  docker build -t ikoula/python -f Dockerfiles\python\Dockerfile .
  echo `n
}

$cur = (Get-Item -Path ".\" -Verbose).FullName -replace '\\', '/' -replace '^C:/', '/c/'
docker run --rm -it -v "$cur`:$cur" -w $cur ikoula/python $args
