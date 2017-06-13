#AWS EC2 install during instance provisioning

#!/bin/bash
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
sudo mv /etc/ansible/hosts /etc/ansible/hosts.orig
sudo nano /etc/ansible/hosts
sudo apt install python-pip
pip install --upgrade pip
pip install awscli

#Systems Manager agent installation
#http://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-agent.html#sysman-install-startup-linux
#
#!/bin/bash
cd /tmp			
wget https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/debian_amd64/amazon-ssm-agent.deb
sudo dpkg -i amazon-ssm-agent.deb
sudo systemctl enable amazon-ssm-agent

#setup IAM policy for instance to communicate with Systems Manager
#https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-configuring-access-policies.html