set -x
set -e

# set up a nixbld group and make some users. Nix builds using these users.
#   interestingly, if you use -g in the useradd command, it won't modify /etc/group,
#   which confuses nix. You need to use -G, which sets a secondary group (the primary
#   group is then just the username).
groupadd -g 20000 nixbld
for i in `seq 1 10`; do
    useradd -u `expr 20000 + $i` -G nixbld -d /var/empty -s /noshell \
            -M -c "Nix build user $i" nixbld_$i
done

# make a nix user to do the install (nix won't let root do it)
useradd --system nix
mkdir /home/nix
chown -R nix:nix /home/nix

# give the nix user control of locations it needs access too
mkdir /nix
chown nix:nix /nix
curl https://nixos.org/nix/install > nix-install.sh
cp nix-install.sh /home/nix/nix-install.sh
chown nix:nix /home/nix/nix-install.sh

# do the install
su nix << EOF
cd /home/nix
sh nix-install.sh
EOF

# copy various files to /root, so we can run nix as root
cp -r /home/nix/.nix* /root
chown -R root:root /root/*
chown -R root /nix
chgrp -R nixbld /nix

# make sure the nixbld group owns what it needs
chgrp -R nixbld /nix/store
chmod 1775 /nix/store

# this probably isn't needed for typical terminals, but for multi-user
# systems we want to create per-user directories
mkdir -p -m 1777 /nix/var/nix/profiles/per-user
mkdir -p -m 1777 /nix/var/nix/gcroots/per-user

# make sure root and other users get nix on their path
echo '. /home/nix/.nix-profile/etc/profile.d/nix.sh' >> ~/.bashrc
echo '. /home/nix/.nix-profile/etc/profile.d/nix.sh' >> /etc/profile.d/nix.sh

# run nix-env -qa, which seems to cache some data, so later operations
# won't be so slow. Also, if this fails you know something went badly.
source ~/.bashrc
nix-env -qa
