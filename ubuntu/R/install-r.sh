# add the Berkeley CRAN mirror as a repository
#    this is needed to get a recent version of R
echo 'deb http://cran.cnr.Berkeley.edu/bin/linux/ubuntu trusty/' >> /etc/apt/sources.list
apt-get update
# the --force-yes looks kind of scary, but it's because ubuntu doesn't
#   officially trust Berkeley's cran repo. If you do, then it's okay :P
apt-get install -y --force-yes r-base r-base-dev
