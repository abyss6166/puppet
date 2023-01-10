class profile::agent_nodes {
  # include dockeragent
  # dockeragent::node {'web.puppet.vm':}
  node 'rocky9vm'
}

  # node 'rocky8vm'
  # node 'redhat9vm'
  # node 'redhat8vm'
