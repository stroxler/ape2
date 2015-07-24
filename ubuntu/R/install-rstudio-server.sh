# install rstudio directly from deb package
#   a warning: the -n option is similar to the -y option with apt-get, it
#   disables the interactive confirmation. If you trust RStudio this is okay,
#   but in general it is considered unsafe.
mkdir -p $HOME/build
cd $HOME/build
wget http://download2.rstudio.org/rstudio-server-0.99.467-amd64.deb
gdebi -n rstudio-server-0.99.467-amd64.deb
