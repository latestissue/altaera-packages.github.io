termux-change-repo
termux-setup-storage
apt update && apt -o DPkg::Options::="--force-confnew" -y upgrade
apt-get -o DPkg::Options::="--force-confnew" -y install openssl-1.1 wget
pkg install wget curl proot-distro -y
wget https://raw.githubusercontent.com/latestissue/altaera-packages.github.io/main/altaera-v2/altaera_install_pt-2.sh
chmod a+x 'altaera_install_pt-2.sh'
bash 'altaera_install_pt-2.sh'
cd $PREFIX/etc/proot-distro
wget https://raw.githubusercontent.com/latestissue/altaera-packages.github.io/main/altaera-v2/altaera-debian/proot/altaera.sh
proot-distro install altaera
proot-distro login altaera
