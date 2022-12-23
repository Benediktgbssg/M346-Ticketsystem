## Projektdokumentation Ticketsystem
**Autoren:** Benedikt Anrig, Manuel Santoro & Fabio Bilger

<img alt="AWS-Logo" src="https://user-images.githubusercontent.com/73245336/209247010-14a3b368-32fa-40ee-bd46-9c6322aff8a0.png" style="height:50px"></img>


### Inhaltsverzeichnis
1. [Projektauftrag](#projektauftrag)
2. [Projektziel](#projektziel)
3. [Aufgabenverteilung](#aufgabenverteilung)
4. [Ports](#ports)
5. [Tests](#tests)
6. [Reflexion](#reflexion)
 

<a name="projektauftrag"></a>
### 1. Projektauftrag
Wir haben den Auftrag erhalten ein Skript zu erstellen, welches ein Ticketsystem automatisch installiert. Wir konnten zwischen verschiedenen Ticketsystemen eines aussuchen. 

**Folgend der offizielle Projektauftrag:**

Installieren Sie ein Ticketsystem ihrer Wahl (z.B. osTicket, zoho, otrs, etc.). Teilen Sie Sie Ihre Wahl der Lehrperson mit.

<a name="projektziel"></a>
### 2. Projektziel

1.	Ein Service soll in der Cloud funktionstüchtig aufgesetzt werden. Dieser Service und die Anforderungen dazu werden im nächsten Unterkapitel Aufgabenstellung 
   vorgestellt.
3.	Der Service soll als Infrastructure as Code (IaC) gestaltet sein und einfach in einer Cloud in Betrieb genommen werden können. Die Konfigurationsdateien werden in      einer Versionsverwaltung verwaltet.
4.	Die Dokumentation findet direkt über Git in Markdown statt (im gleichen Repository wie die Konfigurationsdateien).
5.	Einzelne Testfälle sollen durchgespielt, mittels Screenshots protokolliert und in der Dokumentation abgelegt werden.


<a name="aufgabenverteilung"></a>
### 3. Aufgabenverteilung

Wir haben die Aufgaben jeweils Schritt für Schritt unter uns aufgeteilt.
**Manuel Santoro** war zuständig für das Initial-File welches den Webserver installiert.
**Fabio Bilger** war grössten Teils zuständig für das Initial-File, welches die Datenbank installiert.
**Benedikt Andrig** war für das Hauptskript zuständig, welches zwei AWS-Instanzen erstellt und diese jeweils mit den beiden Initial-Files installiert/konfiguriert.
Um die Dokumentation hat sich grössten Teils Fabio gekümmert, da Benedikt im Laufe der Arbeit das Datenbank-Skript weitergeschrieben hat.

Wir haben uns bei Fragen und Problemen selbstverständlich immer gegenseitig unterstützt, jenachdem wer eine Atwort oder eine Lösung bereit hatte.
Im Endeffekt haben alle von uns in allen Bereichen in irgend einer Form etwas zum Endergebnis beigetragen.

<a name="ports"></a>
### 4. Ports
Hier sind alle Ports aufgelistet, welche geöffnet werden müssen, damit beide Instanzen miteinander kommunizieren können:

| Port         | Protokoll      | Funktion                        |
| :---         | :---           | :---                            |
| Port 80      | HTTP           | Hypertext Transfer Protocoll    |
| Port 3306    | TCP            | MySQL database system           |
| Port 22      | TCP            | Secure Shell (SSH)              |
| Port 1       | TCP            | TCP Port Service Multiplexer    |
| Port 443     | HTTPS          | Hypertext Transfer Protocol over SSL/TLS |

<a name="tests"></a>
### 5. Tests
Leider funktionierte das installieren von redmine am anfang nicht ich hatte folgenden Code verwendet:
wget https://www.redmine.org/releases/redmine-5.0.0.tar.gz | tar xz -C /opt/redmine/ --strip-components=1 redmine-5.0.0.tar.gz
![grafik](https://user-images.githubusercontent.com/114143132/209410073-940c46be-ff34-464c-ae74-d0cb88f08ea2.png)
Jedoch funktionierte das Entzippen nie, deshalb mussten wir dan eine andere Art von installation verwenden, nähmlich mussten wir die Datenbank auch noch auf dem selben Server installiern. Dies funktionierte dann auch alles, hier ist der Befehl:
sudo apt install redmine redmine-mysql
![grafik](https://user-images.githubusercontent.com/114143132/209410234-430bac45-cc5b-47e0-a2a4-c5bd7ff6283a.png)

<a name="reflexion"></a>
### 6. Reflexionen

#### Reflexion Fabio Bilger
Meines Erachtens war die Zeit, die wir für das Projekt bekommen haben wirklich viel zu kurz. Wir wurden ins kalte Wasser geworfen, haben keine Anleitung bekommen, mussten noch alles Mögliche über Github lernen und hatten von Bash auch nicht das Wissen, welches man für das Projekt gebraucht hätte.
Klar hatten wir von einem Bash-Modul bereits die Basics, jedoch hat dieses Wissen keines Wegs ausgereicht ein solches Skript in der vorgegebenen Zeit geschweige nur in der Unterrichtszeit zu schreiben. 
Ich finde, man hätte den Auftrag so gestalten können, dass man die Dokumentation nicht auf Github sonder in Word hätte verfassen können und dass das System nur auf einer Instanz hätte laufen müssen. 
Dass zu dem ansich schon Grossen Auftrag noch die Dokumentation auf Github dazu kam, hat meiner Meinung nach den Rahmen gesprengt und ich finde das ist von Auszubildenden im zweiten Lehrjahr etwas zu viel verlangt.
Trotzdem muss ich sagen, dass die Zusammenarbeit im Team ansich gut war und ich einiges dazu gelernt habe.

#### Reflexion Manuel Santoro
"Irgend einen Text"

#### Reflexion Benedikt Anrig
"Irgend einen Text"



### Quellenverzeichnis
Wir haben uns folgende Anleitung zu Hilfe genommen:
<a href="https://www.veuhoff.net/redmine-ticketsystem-installation-und-konfiguration-fuer-linux-ubuntu-22-04/"> Redmine Ticketsystem </a>
