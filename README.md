# M346-Ticketsystem
Projekt Modul 346 von Fabio, Manuel und Benedikt

### Anleitung Skript AllesInstallierenAufEinemServer
#### Instanz 
Die instance.sh muss man zuerst noch bearbeiten, in dem man die Variabel in der 2 Zeile bearbeitet. Mann dort den eigenen RSA Schlüssel dort angeben.
Danach kann man das Script instance.sh ausführen.


<br>
1. Das Skript *AllesInstallierenAufEinemServer.sh* wird ausgeführt, gib das Admin Passwort **"Riethuesli>12345"** um das Skript zu starten<br>
2. Bei dem sudo apt-get upgrade Befehl muss man noch einamal auf **"Y"** um das Upgrade zu starten.<br>
3. Jetzt muss man nochmals das Passwort eingeben.<br>
4. Gib jetzt nochmals **"Y"** ein
5. Gib nun folgenden SQL befehle in MySql ein:<br>

   *CREATE DATABASE redmine CHARACTER SET utf8mb4;*<br>
   *GRANT ALL PRIVILEGES ON redmine.* TO 'redmine'@'localhost' IDENTIFIED BY 'REDMINE_PASSSWORD';*<br>
   *FLUSH PRIVILEGES;*<br>
   *EXIT;*<br>
   
6. Drücke nach dem eingeben der Kommandos nun mehrmals auf die **Enter Taste**, sodass auch alles augeführt wird.

7. Drücke nochmals die **"Y"** Taste zur Bestätigung der Installation
8. Drücke die Enter Taste für die Installation von Redmine, gib dann zwei Mal das PW: xyz888 ein.
9. Kopier nun diesen Inhalt in die geöffnete Datei, vergiss nicht per **ctrl+s** zu speichern.

  ![image](https://user-images.githubusercontent.com/73245336/209410546-8fe0fff1-ad48-4d8b-b6ff-bd1b4ac42334.png)


10. Kopier nun diesen inhalt in die geöffnete Datei, vergiss nicht per ctrl+ zu speichern. **WICHTIG: DIE IP-ADRESSE IST DIE ADRESSE DER INSTANZ AUF WELCHER REDMINE LÄUFT.**

    DocumentRoot /var/www/html/redmine<br>
    ServerName 192.168.210.16
<br>
    RailsBaseURI /redmine<br>
    PassengerResolveSymlinksInDocumentRoot on
<br>
    ErrorLog ${APACHE_LOG_DIR}/error.log<br>
    CustomLog ${APACHE_LOG_DIR}/access.log combined

11. Redmine wir jetzt im browser geöffnet.

