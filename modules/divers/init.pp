class divers {
  require myuser
  $packages = ['synaptic','apt-xapian-index','git-svn']

  package { $packages:
    ensure => 'installed',
  }
  exec { 'sudo apt install curl htop iotop gparted':
    cwd => '/home/$user',
  }
  exec { 'install-docker-1':
    command => 'sudo apt-get install apt-transport-https ca-certificates curl software-properties-common',
  }
  exec { 'install-docker-2':
    command => 'curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add –',
    require => exec['install-docker-1']
  }
  exec { 'install-docker-3':
    command => 'sudo add-apt-repository deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable',
    require => exec['install-docker-2']
  }
  exec { 'install-docker-4':
    command => 'sudo apt-get install docker-ce',
    require => exec['update', 'install-docker-3']
  }
}
