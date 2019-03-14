class mydocker{

  require myuser
  exec { 'apt-get update':
    command => "/usr/bin/apt-get update",
    #onlyif => "/bin/bash -c 'exit $(( $(( $(date +%s) - $(stat -c %Y /var/lib/apt/lists/$( ls /var/lib/apt/lists/ -tr1|tail -1 )) )) <= 604800 ))'"
  }
  exec { 'install-docker-2':
    command => "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add –",
    require => Exec['apt-get update']
  }
  exec { 'install-docker-3':
    command => "sudo add-apt-repository deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable",
    require => Exec['install-docker-2']
  }
  exec { 'install-docker-4':
    command => "sudo apt-get install docker-ce",
    require => Exec['install-docker-3']
  }
}
