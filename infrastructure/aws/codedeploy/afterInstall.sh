#!/bin/bash

sudo systemctl stop tomcat
# sudo systemctl status tomcat

#removing previous build ROOT folder
sudo rm -rf /opt/tomcat/webapps/ROOT

sudo chown tomcat:tomcat /opt/tomcat/webapps/ROOT.war

# cleanup log files
sudo rm -rf /opt/tomcat/logs/catalina*
sudo rm -rf /opt/tomcat/logs/*.log
sudo rm -rf /opt/tomcat/logs/*.txt