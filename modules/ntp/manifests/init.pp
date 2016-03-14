# Class: ntp
#
# This module manages ntp
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class ntp {

#require ntp::params

package {'ntp':
  ensure          =>        installed,
  
}

file {'/etc/ntp.conf':
  ensure          =>        file,
  owner           =>        root,
  mode            =>        0644,    
  content         =>        template('ntp/ntp-conf.erb'),
  require         =>        Package['ntp'],
}

service {'ntpd':
  ensure          =>        running,
  enable          =>        true,
  subscribe       =>        File['/etc/ntp.conf'],
}

}
