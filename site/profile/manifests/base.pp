class profile::base {
  # user {'admin':
  #   ensure => present
  # }
  file { '/home/ubuntuserver20/aliasbase':
    ensure => present,
    source => "puppet:///site/profile/modules/files/aliasbase"
  }
}
