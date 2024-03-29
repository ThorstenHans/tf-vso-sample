#!/bin/bash

sudo apt-get update
sudo apt-get install wget unzip -y
cd /home/vsonline

wget https://releases.hashicorp.com/terraform/0.12.13/terraform_0.12.13_linux_amd64.zip
unzip terraform_0.12.13_linux_amd64.zip
sudo ln -s /home/vsonline/terraform /usr/local/bin/terraform
sudo ln -s /home/vsonline/terraform /usr/local/bin/t
cd /home/vsonline/workspace
echo "Terraform installed and linked as terraform and t"
t --version
echo ""
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
