class profile::base {
  # user {'admin':
  #   ensure => present
  # }
  file { '/home/mhorneus20/aliasbase':
    ensure => present,
    source => "puppet:///modules/master/aliasbase",
    group => 'mhorneus20',
    owner => 'mhorneus20',
  }
}
