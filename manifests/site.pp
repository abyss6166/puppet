node default {
}
node 'ubuntuserver20' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn} bizzle\n",
   }
  # file { '/home/${user}/aliasbase':
  #   ensure => present,
  #   source => "puppet:///site/master_server/files/aliasbase"
  # }

}

# node 'minetest.puppet.vm' {
#   include role::arch
# }

node 'rocky9vm' {
  include role::rocky9
}
