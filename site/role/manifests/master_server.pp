class role::master_server {
  include profile::base
  include profile::master_server
  # include profile::agent_nodes
}
