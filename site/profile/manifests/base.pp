class profile::base {
  user { 'admin':
    ensure => present,
  }
  include profile::ssh_server
  package {'nano':
    ensure => present,
  }
}
