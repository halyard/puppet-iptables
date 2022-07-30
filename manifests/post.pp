# @summary Configure closing firewall rules
#
class iptables::post {
  firewall { '999 drop all':
    proto  => 'all',
    action => 'drop',
    before => undef,
  }

  firewall { '999 drop all v6':
    proto    => 'all',
    action   => 'drop',
    before   => undef,
    provider => 'ip6tables',
  }

  firewall { '999 drop all forwards':
    chain  => 'FORWARD',
    proto  => 'all',
    action => 'drop',
    before => undef,
  }

  firewall { '999 drop all forwards v6':
    chain    => 'FORWARD',
    proto    => 'all',
    action   => 'drop',
    before   => undef,
    provider => 'ip6tables',
  }
}
