# set R up to auto-use Rstudio's cran mirror
#  (feel free to use another, but if it doesn't support https - and some, like
#   berkeley's, do not - then Rstudio will print warnings)
cat >> /etc/R/Rprofile.site << EOF
local({
  # add MASS to the default packages, set a CRAN mirror
  old <- getOption("defaultPackages"); r <- getOption("repos")
  r["CRAN"] <- "http://cran.rstudio.com"
  options(defaultPackages = c(old, "MASS"), repos = r)
})
EOF

# install R packages
#   for some reason this command seems to fail inside the script, but if
#   you just run it by hand, it works.
R -f package-installs.R
