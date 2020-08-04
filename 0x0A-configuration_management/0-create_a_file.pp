# Create a file with Puppet
file { '/tmp/holberton':
  ensure  => file,
  path    => '/tmp/holberton',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet',
  mode    => '0744',
}
