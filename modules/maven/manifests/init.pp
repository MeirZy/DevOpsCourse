class maven 
{
 package {'java-1.7.0-openjdk-devel': 
 ensure  => present, 
 }

 package { 'maven': 
 ensure  => latest, 
 require => Package['java-1.7.0-openjdk-devel'],
 } 
}
