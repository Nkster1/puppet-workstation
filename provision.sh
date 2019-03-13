#!/bin/sh

echo "adding puppet modules"
sudo /opt/puppetlabs/bin/puppet module install puppetlabs-stdlib
sudo /opt/puppetlabs/bin/puppet module install puppet-unattended_upgrades
sudo /opt/puppetlabs/bin/puppet module install puppetlabs-docker
sudo /opt/puppetlabs/bin/puppet module install bashtoni-timezone
sudo /opt/puppetlabs/bin/puppet module install puppet-archive

echo "Setting up workstation... "
./update.sh
