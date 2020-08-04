# Execute command with Puppet
exec { 'pkill':
  command => 'pkill -x killmenow',
  path    => '/usr/bin/',
  returns => [0,1],
}
