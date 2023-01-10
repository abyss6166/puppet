# class minecraft (
# $serverurl='https://piston-data.mojang.com/v1/objects/c9df48efed58511cdd0213c56b9013a7b5c9ac1f/server.jar',
# $jdkurl='https://download.oracle.com/java/19/latest/jdk-19_linux-x64_bin.rpm',
# $install_dir='/opt/minecraft'
# )

#   file {"${install_dir}/minecraft_server.jar":
#     ensure => file,
#     source => $serverurl,
#     before => Service['minecraft'],
#   }


# {
class profile::master_server (
  $user='mhorneus20',
  )
{
  file { '/home/${user}/aliasus':
    ensure => present,
    source => "puppet:///modules/master/aliasus",
    group => $user,
    owner => $user,
  }

}
