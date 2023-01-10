class profile::base {
  # user {'admin':
  #   ensure => present
  # }
  file { 'aliasbase':
    ensure => present,
    source => "puppet:///modules/files/aliasbase",
    path => '/home/ubuntuserver20',
  }
}
