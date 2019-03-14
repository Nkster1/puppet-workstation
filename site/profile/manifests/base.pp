class profile::base( $packages, $classes) {
  package { $packages:
    ensure => installed,
  }
  include $classes
  include apt
  include docker
  #include wget

}
