class profile::rocky9 (
  $user='mhornerl9'
  )
{
  file {"/home/${user}/aliasrl9":
    ensure => file,
    source => 'puppet:///modules/master/aliasrl9',
    group => $user,
    owner => $user,
}
  file { "/home/${user}/aliasbase":
    ensure => present,
    source => "puppet:///modules/master/aliasbase",
    group => $user,
    owner => $user,
  }
  file { "/home/${user}/.bashrc":
    ensure => present,
    source => "puppet:///modules/master/.bashrc",
    group => $user,
    owner => $user,
  }
  exec {"bashrc":
    cwd => "/home/${user}",
    command => ". /home/${user}/.bashrc",
    path => "/home/${user}",
    provider => "shell",
  }

  package {'tmux':
    ensure => installed,
  }

  user {'mhornerl9':
    ensure => present,
    uid => '1000',
    gid => '1000',
    home => '/home/mhornerl9',
  }

}

