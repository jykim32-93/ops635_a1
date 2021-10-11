class profile::dnsbind::server {

include 'bind'

bind::zone {'assignment1jykim32.ops':
  ensure       => 'present',
  zone_contact => 'contact.assignment1jykim32.ops',
  zone_ns      => ['ns0.assignment1jykim32.ops'],
  zone_serial  => '2012112901',
  zone_ttl     => '604800',
  zone_origin  => 'assignment1jykim32.ops',
}

bind::a { 'assignment1jykim32.ops':
  ensure    => 'present',
  zone      => 'assignment1jykim32.ops',
  ptr       => false,
  hash_data => {
    'puppet-master' => { owner => '192.168.12.2', },
    'puppet-client1' => { owner => '192.168.12.3', },
    'puppet-client2' => { owner => '192.168.12.4', },
  },
}
}
