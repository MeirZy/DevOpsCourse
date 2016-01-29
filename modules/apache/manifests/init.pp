class apache
{
 package {'httpd':
 ensure =>installed,
 }

 service {'httpd':
 ensure => running,
 enable => true,
 restart => true,
 require => Package['httpd'],
 }
}
