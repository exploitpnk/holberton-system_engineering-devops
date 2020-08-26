#!/usr/bin/env bash
# Creating a custom HTTP header response with Puppet
exec { 'update_system':
	command => 'sudo apt-get update && sudo apt-get install nginx -y',
	path    => [ '/usr/bin', '/bin' ],
}
exec {'add_headers':
	command => 'sed -i '/sendfile on;/a add_header X-Served-By $hostname;' /etc/nginx/nginx.conf'
	path	=> ['/usr/bin', '/bin' ],
}
exec { 'restart_nginx':
  command => 'sudo service nginx start',
  path    => ['/usr/bin', '/bin'],
}
