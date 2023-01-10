class profile::master_server (
  $user='mhorneus20'
  )
{
  file { '/home/${user}/aliasus':
    ensure => present,
    source => "puppet:///modules/master/aliasus",
    group => '${user}',
    owner => '${user}',
  }

}
