termux-change-repo
termux-setup-storage
apt-get update
apt-get -o DPkg::Options::="--force-confnew" -y install openssl-1.1 wget
wget https://raw.githubusercontent.com/latestissue/altaera-packages.github.io/main/altaera_script.sh
bash 'altaera_script.sh'
