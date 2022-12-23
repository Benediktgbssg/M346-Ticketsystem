#UpuntuUpdate
sudo apt update
sudo apt upgrade

#MariaDB Server Installation
sudo apt install mariadb-server
#Anmelden
sudo mysql -u root
QUIT

#Benutzer in der Datenbank anlegen
sudo mysql -u root -p
CREATE DATABASE redmine CHARACTER SET utf8mb4;
GRANT ALL PRIVILEGES ON redmine.* TO 'redmine'@'localhost' IDENTIFIED BY 'REDMINE_PASSSWORD';
FLUSH PRIVILEGES;
EXIT;

#Benutzer prüfen durch Anmeldung
mysql -u redmine -p
SHOW DATABASES;
QUIT

#Apache Web-Server insatllieren
sudo apt install apache2 libapache2-mod-passenger

#Redmine Installieren
sudo apt install redmine redmine-mysql

#Installation GEM
sudo gem update
sudo gem install bundler

#Konfiguration des Apache Passenger module.
sudo nano /etc/apache2/mods-available/passenger.conf
   #PassengerDefaultUser www-data

#Erstellt einen symbolischen Link, um Redmine mit dem Web-Dokumentenbereich zu verbinden
sudo ln -s /usr/share/redmine/public /var/www/html/redmine

#Erstellt eine VirtualHost-Datei für Redmine und konfigurieren Sie sie auf Ihren Domainnamen oder Server.

sudo nano /etc/apache2/sites-available/redmine.conf
 #ServerAdmin xyz888
 #DocumentRoot /var/www/html/redmine
 #ServerName 192.168.210.16
  
    #RailsBaseURI /redmine
    #PassengerResolveSymlinksInDocumentRoot on
  
  #ErrorLog ${APACHE_LOG_DIR}/error.log
  #CustomLog ${APACHE_LOG_DIR}/access.log combined

#Erstellt die Datei Gemfile.lock und setzen Sie den Eigentümer, so dass der Benutzer www-data von apache darauf zugreifen kann.
sudo touch /usr/share/redmine/Gemfile.lock
sudo chown www-data:www-data /usr/share/redmine/Gemfile.lock

#Aktiviert die Redmine Webseite wie in der Konfiguration.
sudo a2ensite redmine.conf
sudo systemctl restart apache2.service
sudo systemctl status apache2.service

