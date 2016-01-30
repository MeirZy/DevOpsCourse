__author__ = 'Mz'

import os


def copywar(source_file, destination_path):
    # This copy source war file to destination tomcat folder
    os.system("scp " + source_file + " meirz@websrv.eastus.cloudapp.azure.com:" + destination_path)
    
    return;

    # call function
    # copywar( "/home/meirz/.m2/repository/link/otomato/courseProject/1.0-SNAPSHOT/courseProject-1.0-SNAPSHOT.war", "/var/lib/tomcat/webapps" )

