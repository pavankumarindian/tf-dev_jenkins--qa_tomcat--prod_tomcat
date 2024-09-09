#!/bin/bash

sudo apt-get update

#Install tomcat9
sudo apt-get install -y tomcat9

sleep 20
 
#Install tomcat9 admin
sudo apt-get install -y tomcat9-admin

sleep 20
 
#Setup username and password
#sudo vim /etc/tomcat9/tomcat-users.xml
#remove all the line and add below code in that file and save it.

sudo bash -c 'cat > /etc/tomcat9/tomcat-users.xml <<EOF
<tomcat-users>
<user username="prodenv" password="prod@123" roles="manager-script"/>
</tomcat-users>
EOF'

sudo systemctl restart tomcat9

sleep 20