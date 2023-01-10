class profile::base {
  # user {'admin':
  #   ensure => present
  # }
  file { 'temp.conf':
    ensure => present,
    source => "puppet:///modules/temp.conf",
    path => '/tmp/temp.conf',
  }
}
