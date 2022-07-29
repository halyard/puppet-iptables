# @summary Configure iptables rules
#
class iptables (
) {
  class { 'iptables::pre': }

  -> class { 'firewall': }

  -> class { 'iptables::post': }

  -> resources { 'firewall':
    purge => true,
  }
}
