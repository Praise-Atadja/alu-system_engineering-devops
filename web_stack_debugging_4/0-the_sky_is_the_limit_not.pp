#verify ngix is running
service {'nginx':
  ensure => running,
}

exec {'increase ULIMIT':
  #replacae the value
  command  => 'sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 3000\"/g" /etc/default/nginx',
  provider => 'shell'
  #restart nginx
  notify   => Service['nginx']
}
