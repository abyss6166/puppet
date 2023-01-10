node default {
}
node 'ubuntuserver20' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn} bizzle\n",
   }
  file { '/home/mhorneus20/aliasbase':
    ensure => present,
    source => "puppet:///modules/aliasbase"
  }

}

# node 'minetest.puppet.vm' {
#   include role::arch
# }

node 'rocky9vm' {
  include role::rocky9
}
