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

# basic development packages
R -e 'install.packages("rstudioapi")'
R -e 'install.packages("devtools")'
R -e 'install.packages("roxygen2")'
R -e 'install.packages("testthat")'
R -e 'install.packages("knitr")'

# key packages for my applied workflow
R -e 'install.packages("dplyr")'
R -e 'install.packages("tidyr")'
R -e 'install.packages("plyr")'
R -e 'install.packages("stringr")'
R -e 'install.packages("ggplot2")'

