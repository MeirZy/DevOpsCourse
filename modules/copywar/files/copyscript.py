__author__ = 'Mz'

import os


def copywar(source_file, destination_path):
    # This copy source war file to destination tomcat folder
    os.system("scp " + source_file + " meirz@websrv.eastus.cloudapp.azure.com:" + destination_path)
    
    return;

    # call function
    # copywar( "/home/meirz/jenkins/workspace/CourseProject/target/courseProject.war", "/var/lib/tomcat/webapps" )

