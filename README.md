# M346-Ticketsystem
Projekt Modul 346 von Fabio, Manuel und Benedikt

### Anleitung Skript AllesInstallierenAufEinemServer
<br>

1. Das Skript *AllesInstallierenAufEinemServer.sh* wird ausgeführt, gib das Admin Passwort **"Riethuesli>12345"** um das Skript zu starten
2. Bei dem sudo apt-get upgrade befehl muss man noch einamal auf **"Y"** um das Upgrade zu starten.
3. Jetzt muss man nochmals das Passwort eingeben.
4. Gib jetzt nochmals **"Y"** ein
5. Gib nun folgenden SQL befehle in MySql ein:

   *CREATE DATABASE redmine CHARACTER SET utf8mb4;*
   *GRANT ALL PRIVILEGES ON redmine.* TO 'redmine'@'localhost' IDENTIFIED BY 'REDMINE_PASSSWORD';*
   *FLUSH PRIVILEGES;*
   *EXIT;*
   
6. Drücke nach dem eingeben der Komandos nun mehrmals auf die **Enter Taste**, sodass auch alles augeführt wird.

7. Drücke nochmals die **"Y"** Taste zur bestätigung der Installation
8. Drücke die Einter Taste für die Installation von Redmine, gib dann zwei mal das PW: xyz888 ein.
9. Kopier nun diesen inhalt in die geöffnete Datei, vergiss nicht per **ctrl+s** zu speichern.

  ![image](https://user-images.githubusercontent.com/73245336/209410546-8fe0fff1-ad48-4d8b-b6ff-bd1b4ac42334.png)


10. Kopier nun diesen inhalt in die geöffnete Datei, vergiss nicht per ctrl+ zu speichern. **WICHTIG: DIE IP-ADRESSE IST DIE ADRESSE DER INSTANZ AUF WELCHER REDMINE LÄUFT.**

    DocumentRoot /var/www/html/redmine
    ServerName 192.168.210.16

    RailsBaseURI /redmine
    PassengerResolveSymlinksInDocumentRoot on

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined

11. Redmine wir jetzt im browser geöffnet.

