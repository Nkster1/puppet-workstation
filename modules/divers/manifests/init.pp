class divers {
  require myuser
  $packages = ['synaptic','apt-xapian-index','git-svn']

  package { $packages:
    ensure => 'installed',
  }
  exec { 'sudo apt install curl htop iotop gparted':
    cwd => '/home/$user',
  }
}
