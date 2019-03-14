#!/bin/sh
 
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
echo "myuser::username: '$(whoami)'" >> ./hieradata/hostname.yaml
cd ~ && wget https://apt.puppetlabs.com/puppet-release-xenial.deb
sudo dpkg -i puppet-release-xenial.deb
sudo apt-get update
sudo apt-get install puppet-agent
cd "$parent_path"
sudo chmod +rwx ./provision.sh
sudo chmod +rwx ./docker_setup.sh
sudo chmod +rwx ./update.sh
sudo chmod +rwx ./install_certificate.sh
