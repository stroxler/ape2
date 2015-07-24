# rstudio-server depends on PAM, and does not allow users like root to use
# it. Also, it crashes if there is no home directory. Set up an rstudio user.
useradd rstudio
mkdir /home/rstudio
chown rstudio:rstudio /home/rstudio
passwd rstudio <<EOF
rstudio
rstudio
EOF
