# Install Nginx
# Requeriments:
#   Listening on port 80
#   Index page must contains only the string 'Holberton School'
#   The redirection must be a “301 Moved Permanently”

package {  'nginx':
    ensure => 'installed'
}

file { '/var/www/html/index.nginx-debian.html':
    ensure  => 'present',
    content => 'Holberton School'
}

exec { "sed -i '/server_name _;/a rewrite ^/redirect_me(.*)$ https://ddg.gg permanent;' /etc/nginx/sites-available/default":
    command => "/bin/sed -i '/server_name _;/a rewrite ^/redirect_me(.*)$ https://ddg.gg permanent;' /etc/nginx/sites-available/default"
}

exec { '/etc/init.d/nginx restart':
    command => '/etc/init.d/nginx restart'
}
