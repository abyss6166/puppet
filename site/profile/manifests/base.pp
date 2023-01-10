class profile::base {
  # user {'admin':
  #   ensure => present
  # }
  file { 'aliasbase':
    ensure => present,
    source => "puppet:///site/profile/modules/files/aliasbase"
    path => '/home/ubuntuserver20'
  }
}
