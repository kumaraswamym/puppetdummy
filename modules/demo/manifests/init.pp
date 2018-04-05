class demo {

  file {'/etc/welcome':
    ensure => file,
    owner  => "root",
    group  => "root",
    content => template('demo/welcome.erb'), 
    mode   => "0755",
    
   }


  file {'/etc/dummy':
   ensure => directory,
   owner  => "root",
    group  => "root",
  }

  user { 'admin':
    ensure => present,
    shell   => '/bin/bash',
    home   => '/home/admin',
   groups   => ['sudoers','root'],
   managehome  => true,
   password  => 'admin123',
  }

 
  group {'sudoers':
    ensure  => present,
  }
}
