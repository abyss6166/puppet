class profile::base {
  # user {'admin':
  #   ensure => present
  # }
  file { 'aliasbase':
    ensure => present,
    source => "puppet:///files/aliasbase",
    path => '/home/ubuntuserver20/aliasbase',
  }
}
