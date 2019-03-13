class kepass2{
  exec { 'keepass_apt_get_update':
   command     => 'apt-get update',
   cwd         => '/tmp',
   path        => ['/usr/bin'],
   refreshonly => true,
 } ~>

 package { 'keepass2':
   ensure      => installed
}
}
