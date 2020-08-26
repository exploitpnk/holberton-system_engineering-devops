# Creating a custom HTTP header response with Puppet
exec { 'update_system':
  command => 'sudo sudo apt-get update -y',
  path    => ['/usr/bin', '/bin'],
}

exec { 'install_nginx':
  command => 'sudo apt-get install nginx -y',
  path    => ['/usr/bin', '/bin'],
}

exec { 'apply_config':
  command => 'sudo sed -i "s/server_name _;/server_name _;\n\tadd_header X-Served-By \$hostname;/" /etc/nginx/sites-enabled/default',
  path    => ['/usr/bin', '/bin'],
}

exec { 'restart_service':
  command => 'sudo service nginx start',
  path    => ['/usr/bin', '/bin', '/usr/sbin'],
}