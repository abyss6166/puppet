class role::fedora_home {
  include profile::base
  include profile::fedora_home
  include profile::fedora_work
  # include profile::agent_nodes
}
