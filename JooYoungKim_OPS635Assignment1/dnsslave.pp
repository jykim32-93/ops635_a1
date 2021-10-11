class profile::dnsbind::server_slave {

include 'bind'

bind::zone {'assignment1jykim32.ops':
  ensure       => 'present',
  zone_contact => 'contact.assignment1jykim32.ops',
  zone_ns      => ['ns0.assignment1jykim32.ops'],
  zone_serial  => '2012112901',
  zone_ttl     => '604800',
  zone_origin  => 'assignment1jykim32.ops',
  transfer_source => '192.168.12.2', 
}
}
