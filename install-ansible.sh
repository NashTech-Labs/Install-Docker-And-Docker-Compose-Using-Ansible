# refresh your system’s package index
sudo apt update
# Install ansible dependencies by running the following apt command
sudo apt install software-properties-common
# It will configure PPA repository for ansible
sudo add-apt-repository --yes --update ppa:ansible/ansible
# install latest version of Ansible
sudo apt install ansible
# After the successful installation of Ansible, verify its version
ansible --version