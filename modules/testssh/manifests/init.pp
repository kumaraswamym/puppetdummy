class testssh {
 case $osfamily {
    'RedHat': { $ssh_name = 'sshd' }
    'CentOS': { $ssh_name = 'sshd' }
    'Debian': { $ssh_name = 'ssh' }
    'Ubuntu': { $ssh_name = 'ssh' }
   }

 package {'openssh-package':

   name => 'openssh',
   ensure=> present,
 }


 file {'/etc/ssh/sshd_config':

  ensure   => file,
  owner    => root,
  group    => root,
  require  => Package['openssh-package'], 
  source   => 'puppet:///modules/testssh/sshd_config',
  }

 
  service {'ssh-service':
    name   => $ssh_name,
    ensure => running,
    enable => true,
    subscribe => File['/etc/ssh/sshd_config'],
  }

  


}
