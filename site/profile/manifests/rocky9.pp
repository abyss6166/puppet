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

