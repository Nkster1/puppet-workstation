# == Class: profile::devtools ($packages, $classes)
#
class profile::devtools ($packages, $classes) {
  # resources
  require profile::base

  include $classes

#  package { $packages:
#    ensure => installed,
#  }

  class{'docker::compose':
  ensure => present,
  }
}
