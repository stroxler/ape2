# Package install scripts

This repository is to collect install scripts I run on various distros.

# Initial installation in linux

The two dominant package managers in linux are `rpm`, which `yum` providing
dependency handling, and `dpkg`, with `apt` providing dependency handling.

On a fresh install, the first think you want is git, so you can pull in
your configuration as well as install scripts, and this is the one thing
`ape2` cannot possibly do for you, since you need git first!

## Installing git on debian-based systems

Run these commands to get git and then `ape2`:
```
apt-get update
apt-get -y install git
git clone https://github.com/stroxler/ape2
```

## Installing git on rpm-based systems

Run these commands to get git and then `ape2`:
```
yum -y update
yum -y install git
git clone https://github.com/stroxler/ape2
```
