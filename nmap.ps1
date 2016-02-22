# Run nmap in a container
# based on https://github.com/jfrazelle/dotfiles/blob/master/.dockerfunc

docker run --rm -it --net host jess/nmap $args
