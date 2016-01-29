#site.pp
#Created By Mz/Devops course

$jenkinsSRV = 'jenkinssrv.dybetaznhvqetlla1bxv4v3w0c.bx.internal.cloudapp.net'
$buildSRV = 'buildsrv.dybetaznhvqetlla1bxv4v3w0c.bx.internal.cloudapp.net'
$webSRV = 'webserver.dybetaznhvqetlla1bxv4v3w0c.bx.internal.cloudapp.net'

node 'default'
{}

node $jenkinsSRV
{
  include ntp
  include jenkins
  
  Class['ntp'] -> Class['jenkins']
}

node $buildSRV
{
  include ntp
  include git
  include java
  include maven
  
  Class['ntp'] -> Class['git'] -> Class['java'] -> Class['maven']
}

node $webSRV
{
  include ntp
  include tomcat 
  include python
  include copywar

  Class['ntp'] -> Class['apache'] -> Class['python'] -> Class['copywar']
}





