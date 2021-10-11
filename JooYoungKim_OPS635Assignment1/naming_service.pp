service { "dns/client":
ensure => running,
}

svccfg { "domainname":
  ensure => present
  fmri => "svc:/network/nis/domain",
  property => "config/domainname",
  type => "hostname",
  value => "assignment1jykim32.ops",
  notify => Service[‘dns/client'],
}

svccfg { "nameserver":
  ensure => present,
  fmri: => "svc:/network/dns/client",
  property => "config/nameserver",
  type => "net_address",
  value => "192.168.12.0/24"
  notify => Service[‘dns/client'],
