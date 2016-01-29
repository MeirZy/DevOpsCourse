class ntp
{
 package { 'ntp':
 ensure => installed,
 }

 service { 'ntpd':
 ensure => running,
 enable => true,
 restart => true,
 require => Package['ntp'],
 }
}
