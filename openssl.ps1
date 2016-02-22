# Run openssl in a container

# Build if needed
if (!(docker images | Select-String -Pattern ikoula/openssl)) {
  docker build -t ikoula/openssl -f Dockerfiles\openssl\Dockerfile .
  echo `n
}

$cur = (Get-Item -Path ".\" -Verbose).FullName -replace '\\', '/' -replace '^C:/', '/c/'
docker run --rm -it -v "$cur`:$cur" -w $cur ikoula/openssl $args
