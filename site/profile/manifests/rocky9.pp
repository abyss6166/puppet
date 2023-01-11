class profile::rocky9 (
  $user='mhornerl9'
  )
{
  file {'/home/${user}/aliasrocky9':
    ensure => file,
    source => 'puppet:///files/aliasrl9'
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
