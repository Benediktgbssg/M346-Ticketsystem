# M346-Ticketsystem
Projekt Modul 346 von Fabio, Manuel und Benedikt

Anleitung Skript AllesInstallierenAufEinemServer

1. Das Skript AllesInstallierenAufEinemServer.sh wird ausgeführt, gib das Admin Passwort "Riethuesli>12345" um das Skript zu starten
2. Bei dem sudo apt-get upgrade befehl muss man noch einamal auf "y" um das Upgrade zu starten.
3. Jetzt muss man nochmals das Passwort eingeben.
4. Gib jetzt nochmals "Y" ein
5. Gib nun folgenden SQL befehle in MySql ein:
CREATE DATABASE redmine CHARACTER SET utf8mb4;
GRANT ALL PRIVILEGES ON redmine.* TO 'redmine'@'localhost' IDENTIFIED BY 'REDMINE_PASSSWORD';
FLUSH PRIVILEGES;
EXIT;
Drücke nach dem eingeben der Komandos nun mehrmals auf die Enter Taste sodass auch alles augeführt wird
7. Drücke nochmals die "Y" Taste zur bestätigung der Installation
8. Drücke die Einter Taste für die Installation von Redmine, gib dann zwei mal das PW: xyz888 ein.
9. Kopier nun diesen inhalt in die geöffnete Datei, vergiss nicht per ctrl+s 
