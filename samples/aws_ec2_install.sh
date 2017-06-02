#AWS EC2 install during instance provisioning

#!/bin/bash
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
sudo mv /etc/ansible/hosts /etc/ansible/hosts.orig
sudo nano /etc/ansible/hosts