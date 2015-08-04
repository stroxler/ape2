# Clean out a nix distribution install using the
# install-nix.sh
#
# I don't recommend doing this if you have installed
# any software with nix, the script is here to help me
# debug the install-nix script.

for i in 1 2 3 4 5 6 7 8 9 10; do
    userdel nixbld_$i
done
groupdel nixbld

rm -rf /home/nix
rm -rf /nix
rm -rf /root/.nix*
userdel nix
