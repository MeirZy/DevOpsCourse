__author__ = 'Mz'

#!/usr/bin/python

import os
import sys

def main():
 source_file = sys.argv[1]
 dest_dir = sys.argv[2]    
 
 os.system("scp " + "meirz@buildsrv.dybetaznhvqetlla1bxv4v3w0c.bx.internal.cloudapp.net:"+ source_file + " "+ dest_dir)
 
  
if __name__ == '__main__':
main()

    # arguments: copyscript.py /home/meirz/jenkins/workspace/CourseProject/target/courseProject.war /var/lib/tomcat/webapps

