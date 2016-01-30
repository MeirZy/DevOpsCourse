# copy python scp script file to web server /home/meirz

class copywar
{
 file { "/home/meirz":
    ensure => present, 
    mode => 777,
    source => "puppet:///modules/copywar/files/copyscript.py"
    }
}
