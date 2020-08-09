#!/usr/bin/python3

import cgi
import subprocess

print("content-type: text/html")

data = cgi.FieldStorage()
name_of_os = data.getvalue("os")
name_of_image = data.getvalue("image")
path=data.getvalue("path")

cmdr = "sudo docker run -dit --name {} {}".format(name_of_os,name_of_image)
outputr = subprocess.getoutput(cmdr)
print(outputr)

cmdb = "sudo docker build -t {} {}".format(name_of_image,path)
outputb = subprocess.getoutput(cmdb)
print(outputb)

