# I didn't have any problems installing packages with nix
# on ubuntu. But on CentOS, some of the tools being used were
# so old that nix was breaking, and apparently nix doesn't 
# control it's own fetch-time dependencies.
#
# here are the ones I've discovered so far that need to be
# updated before you start using nix with abandon.
nix-env -i curl
nix-env -i perl
