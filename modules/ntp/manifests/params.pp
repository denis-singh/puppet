class ntp::params ($server = undef) {

$time_server = hiera('ntp::params::server', $server)

if $time_server == undef {
  fail("Please provide at least one time server!")
}
  
}