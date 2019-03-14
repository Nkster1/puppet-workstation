class profile::base( $packages, $classes) {
  package { $packages:
    ensure => installed,
  }

  include $classes
  include apt
  include stdlib
  #include wget

}
