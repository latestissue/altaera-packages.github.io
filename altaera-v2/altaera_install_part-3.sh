cd /data/data/com.termux/files/home
rm -rf 'altaera_install.sh'
rm -rf 'altaera_install_pt-2.sh
wget https://raw.githubusercontent.com/latestissue/altaera-packages.github.io/main/altaera-v2/altaera-update.sh
wget https://raw.githubusercontent.com/latestissue/altaera-packages.github.io/main/altaera-v2/altaera.sh
wget https://raw.githubusercontent.com/latestissue/altaera-packages.github.io/main/altaera-v2/bash.bashrc
chmod a+x 'altaera-update.sh'
chmod a+x 'altaera.sh'
rm -rf '/data/data/com.termux/files/usr/etc/bash.rc'
cp 'bash.bashrc' '/data/data/com.termux/files/usr/etc/'
rm -rf 'bash.bashrc'
rm -rf '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/initial.sh'
rm -rf '/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/altaera/root/bash.bashrc'
rm -rf 'initial.sh'
rm -rf 'bash.bashrc'