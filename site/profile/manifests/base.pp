class profile::base {
  # user {'admin':
  #   ensure => present
  # }
  file { '/home/${user}/aliasbase':
    ensure => present,
    source => "puppet:///modules/files/aliasbase"
  }
}
