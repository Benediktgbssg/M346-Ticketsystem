sudo apt-get update && sudo apt-get dist-upgrade
sudo apt install build-essential ruby-dev libxslt1-dev libmariadb-dev libxml2-dev zlib1g-dev imagemagick libmagickwand-dev curl gnupg2 bison libbison-dev libgdbm-dev libncurses-dev libncurses5-dev libreadline-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 -y
sudo apt install apache2 libapache2-mod-passenger
sudo systemctl enable --now apache2
sudo apt install ruby-full
sudo useradd -r -m -d /opt/redmine -s /usr/bin/bash redmine

#install redmine (Ticketsystem)
sudo apt-install curl
curl -s ttps://www.redmine.org/releases/redmine-5.0.0.tar.gz | sudo -u redmine tar xz -C /opt/redmine/ --strip-components=1
wget https://www.redmine.org/releases/redmine-5.0.0.tar.gz
tar -xvf redmine-5.0.0.tar.gz
wget https://www.redmine.org/releases/redmine-5.0.0.tar.gz | tar xz -C /opt/redmine/ --strip-components=1 redmine-5.0.0.tar.gz
