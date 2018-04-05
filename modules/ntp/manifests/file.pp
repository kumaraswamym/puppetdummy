class ntp::file {
   file {'/etc/ntp.conf':
      ensure => file,
      require => Package['ntp'],
      content => template("ntp/ntp.conf.erb"),
   }
 }
