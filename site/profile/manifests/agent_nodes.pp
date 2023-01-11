class profile::agent_nodes {
  node 'rocky9vm',
  node 'rocky8vm',
  node 'redhat9vm',
  node 'redhat8vm',
}

  # include dockeragent
  # dockeragent::node {'web.puppet.vm':}
