#Making sure yum-update is processed
# execute 'yum-update'
exec { 'yum-update':                   
  command => '/usr/bin/yum-update'  
}

# install bind
package { 'bind':
  require => Exec['yum-update'],        
  ensure => installed,
}

# ensure bind service is running
service { 'bind':
  ensure => running,
}

# install bind-utils package
package { 'bind-utils':
  require => Exec['yum-update'],        
  ensure => installed,
}

# ensure mysql service is running
service { 'bind-utils':
  ensure => running,
}
