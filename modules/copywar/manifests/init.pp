# copy python scp script file to web server /home/meirz

class copywar
{
 file { "/home/meirz":
    ensure => present, 
    source => "puppet:///modules/copywar/files/copyscript.py"
    }
}
