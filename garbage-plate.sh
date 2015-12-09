#!/usr/bin/bash
# install all tools necessary for a fresh install

# Install git
sudo apt-get install git

# Install pip
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
rm get-pip.py

# Update and install mysql
sudo apt-get update
sudo apt-get install mysql-server
sudo apt-get install libmysqlclient-dev

# Install python-dev
# THIS IS IMPORTANT
sudo apt-get install python-dev

# install LAMP
sudo apt-get install tasksel
sudo tasksel install lamp-server

#install phpmyadmin
sudo apt-get update
sudo apt-get install phpmyadmin

#For the server selection, choose apache2. Note: If you do not hit SPACE to select Apache, the installer will not move the necessary files during installation. Hit "SPACE", "TAB", and then "ENTER" to select Apache.
#Select yes when asked whether to use dbconfig-common to set up the database
#You will be prompted for your database administrators password
#You will then be asked to choose and confirm a password for the phpMyAdmin application itself

# add phpmyadmin to apache config
# Add : Include /etc/phpmyadmin/apache.conf
sudo nano /etc/apache2/apache2.conf

#install java JRE and JDK
sudo apt-get update
sudo apt-get install default-jre
sudo apt-get install default-jdk

#The only thing we need to do is explicitly enable the php5-mcrypt extension, which we can do by typing:
sudo php5enmod mcrypt

#restart apache
sudo service apache2 restart

# Sublime Text
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer