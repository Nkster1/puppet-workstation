#!/bin/sh
cd ~ && wget https://apt.puppetlabs.com/puppet-release-xenial.deb
sudo dpkg -i puppet-release-xenial.deb
sudo apt-get update
sudo apt-get install puppet-agent
