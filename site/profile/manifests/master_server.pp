class profile::master_server (
  $user='msh',
) {
  file { "/home/${user}/aliasus":
    ensure => present,
    source => 'puppet:///modules/master/aliasus',
    group  => $user,
    owner  => $user,
  }
  file { "/home/${user}/.bashrc":
    ensure => present,
    source => 'puppet:///modules/master/.bashrc',
    group  => $user,
    owner  => $user,
  }
  # exec { "bashrc":
  #   cwd => "/home/${user}",
  #   command => ". /home/${user}/.bashrc",
  #   path => "/home/${user}",
  #   provider => "shell",
  # }
}
