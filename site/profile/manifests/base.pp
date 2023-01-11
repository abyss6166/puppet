class profile::base {
  # user {'admin':
  #   ensure => present
  # }
  file { "/home/${user}/aliasbase":
    ensure => present,
    source => "puppet:///modules/master/aliasbase",
    group => $user,
    owner => $user,
  }
}
