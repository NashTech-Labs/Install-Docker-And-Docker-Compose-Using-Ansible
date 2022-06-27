## Install and Configure Docker and Docker-Compose using Ansible 

For this playbook to run on your machine you first have *Ansible* installed in your machine. If you dont have ansible run install-ansible.sh on your master machine it will install ansible.

Then you need to configure ansible which is pretty simple. Set up your inventory file with the required host and then you can run the playbook using the following command 
``` ansible-playbook -i inventory playbooks/main.yaml```

Inside playbook , The first task, called install dependencies, installs the following packages:

- apt-transport-https
- ca-certificates
- curl
- gnupg-agent
- software-properties-common

Next task, add GPG key, adds an APT key to the system, And just below we have the task add docker repository to apt.

Install Docker needed packages in the next task, for that we are going to install the following:

- docker-ce
- docker-ce-cli
- containerd.io

Then, with the task check docker is active, we are going to ensure that the service is running after installation. And we check docker group is in place with the task Ensure group “docker” exists.  we run the next task adding ubuntu to docker group, which basically adds the user ubuntu -our running user- to the group docker. and after that we install *Docker-Compose*.
