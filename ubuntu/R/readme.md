# Install scripts for the latest release of R on ubuntu

All of these scripts assume you are running them as root. If you are root,
you may just run them. If not, run them as sudo commands (read them carefully
first to verify that this is not a security risk).

## core scripts

Run
```
sh install-dependencies.sh
```
to install some standard C libraries which are needed for core R packages.

Running
```
sh install-r.sh
```
will add a CRAN mirror to your set of repositories and install the latest
release of R.

Running
```
sh install-packages.sh
```
will configure R with a default CRAN mirror, and install some of the core
third-party packages I find essential.

To install RStudio-server, you can run
```
sh install-rstudio-server.sh.
```

By tweaking this script slightly, you could install the Desktop version of
Rstudio instead.

## other scripts

Running
```
sh create-rstudio-user.sh
```
will set up a new user. This is useful if you are running on a cloud service
which has only a root user by default, but if you are a non-root user already
you should not need it.


## what will go out of date?

I expect the binary installs and the R install script to remain valid long-term,
but the RStudio download will eventually go out-of-date. Just go to the
RStudio downloads page to find the most recent RStudio server release.
