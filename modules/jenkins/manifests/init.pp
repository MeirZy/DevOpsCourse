class jenkins 
{
        yumrepo {'jenkins':
        descr    => 'Jenkins',
        baseurl  => "http://pkg.jenkins-ci.org/redhat-stable/",
        gpgcheck => 1,
        gpgkey   => "http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key",
        }
          package { 'jenkins':
          ensure => installed,
          require => Package['java-1.8.0-openjdk-devel'],
         }
          package { 'java-1.8.0-openjdk-devel':
          ensure => installed,
          }
          service {'jenkins':
          enable => true,
          ensure => running,
          restart => true,
          require => Package['jenkins'],
          }
}
