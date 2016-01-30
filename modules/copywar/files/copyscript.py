__author__ = 'Mz'

#!/usr/bin/python

import os
import sys

def main():
 source_file = sys.argv[1]
 dest_dir = sys.argv[2]    
 os.system("scp " + source_file + " meirz@websrv.eastus.cloudapp.azure.com:" + dest_dir)
    
 return;
  
if __name__ == '__main__':
main()

    # call function
    # arguments: ( "/home/meirz/jenkins/workspace/CourseProject/target/courseProject.war", "/var/lib/tomcat/webapps" )

