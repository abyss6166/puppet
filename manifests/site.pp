node default {
}
node 'ubuntuserver20' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
   }
  # file { '/home/${user}/aliasbase':
  #   ensure => present,
  #   source => "puppet:///modules/master/aliasbase",
  #   group => '${user}',
  #   owner => '${user}',
  # }

}

# node 'minetest.puppet.vm' {
#   include role::arch
# }

node 'rocky9vm' {
  include role::rocky9
}
