node default {
}
node 'ubuntuserver20' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
   }
}

# node 'minetest.puppet.vm' {
#   include role::arch
# }

node 'rocky9vm' {
  include role::rocky9
}
