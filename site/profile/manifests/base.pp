class profile::base {
  # user {'admin':
  #   ensure => present
  # }
  file { '/tmp/temp.conf':
    ensure => present,
    source => "puppet:///modules/temp.conf",
    path => '/tmp/temp.conf',
  }
}
