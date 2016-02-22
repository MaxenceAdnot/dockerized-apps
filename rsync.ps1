# Run rsync in a container

# Build if needed
if (!(docker images | Select-String -Pattern ikoula/rsync)) {
  docker build -t ikoula/rsync -f Dockerfiles\rsync\Dockerfile .
  echo `n
}

$cur = (Get-Item -Path ".\" -Verbose).FullName -replace '\\', '/' -replace '^C:/', '/c/'
docker run --rm -it -v "$cur`:$cur" -w $cur ikoula/rsync $args
