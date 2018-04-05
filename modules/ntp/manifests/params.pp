class ntp::params {
   case $::operatingsystem {
      'centos': {
         $service_name = 'ntpd'
        }
      'ubuntu': {
         $service_name = 'ntp'
        }
      default: { fail('OS $::operatingsystem is not supported at present') }
  }
 }
