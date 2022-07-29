# @summary Configure basic early-stage firewall rules
#
class iptables::pre {
  Firewall {
    require => undef,
  }

  firewall { '001 accept related established rules':
    proto  => 'all',
    state  => ['RELATED', 'ESTABLISHED'],
    action => 'accept',
  }

  firewall { '002 accept all icmp':
    proto  => 'icmp',
    action => 'accept',
  }

  firewall { '003 accept all to lo interface':
    proto   => 'all',
    iniface => 'lo',
    action  => 'accept',
  }

  firewall { '004 accept inbound ssh':
    dport  => 22,
    proto  => 'tcp',
    action => 'accept',
  }

  firewall { '001 accept related established rules':
    proto    => 'all',
    state    => ['RELATED', 'ESTABLISHED'],
    action   => 'accept',
    provider => 'ip6tables',
  }

  firewall { '002 accept all icmp':
    proto    => 'ipv6-icmp',
    action   => 'accept',
    provider => 'ip6tables',
  }

  firewall { '003 accept all to lo interface':
    proto    => 'all',
    iniface  => 'lo',
    action   => 'accept',
    provider => 'ip6tables',
  }

  firewall { '004 accept inbound ssh':
    dport    => 22,
    proto    => 'tcp',
    action   => 'accept',
    provider => 'ip6tables',
  }
}
