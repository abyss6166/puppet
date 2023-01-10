class profile::master_server (
  # $user='mhorneus20'
  )
{
  file { '/home/mhorneus20/aliasus':
    ensure => present,
    source => "puppet:///modules/master/aliasus",
    group => 'mhorneus20',
    owner => 'mhorneus20',
  }

}
