# Run git in a container

# Build if needed
if (!(docker images | Select-String -Pattern ikoula/git)) {
  docker build -t ikoula/git -f Dockerfiles\git\Dockerfile .
  echo `n
}

$cur = (Get-Item -Path ".\" -Verbose).FullName -replace '\\', '/' -replace '^C:/', '/c/'
docker run --rm -it -v "$cur`:$cur" -w $cur ikoula/git $args
