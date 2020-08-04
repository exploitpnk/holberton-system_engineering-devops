# Puppet Manifiest to customize SSH configuration
file_line { 'PasswordAuthentication':
  path   => '/etc/ssh/ssh_config',
  ensure => 'present',
  line   => 'PasswordAuthentication no',
}
file_line { 'IdentityFile':
  path   => '/etc/ssh/ssh_config',
  ensure => 'present',
  line   => 'IdentityFile ~/.ssh/holberton'
}