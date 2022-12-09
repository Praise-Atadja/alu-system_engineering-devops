#verify ngix is running
service {'nginx':
  ensure => running,
}

exec {'increase ULIMIT':
  #replacae the value
<<<<<<< HEAD
  command  => 'sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 3000\"/g" /etc/default/nginx',
=======
  command  => 'sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 4000\"/g" /etc/default/nginx',
>>>>>>> ea98053e1a5915d2734fcf5d5674ee69ccb64f97
  provider => 'shell'
  #restart nginx
  notify   => service['nginx']
}
