
***************************************************************************
### InteliJ IDE ***********************************************
sudo apt update
sudo apt upgrade
sudo apt install snapd
sudo snap install core

to install:
sudo snap install intellij-idea-ultimate --classic
sudo snap install intellij-idea-community --classic --edge

to run:
intellij-idea-ultimate
intellij-idea-community

to remove:
sudo snap remove intellij-idea-ultimate

*****************************************************************************
### DB postgreSql
sudo -u postgres createuser -s -i -d -r -l -w <<username>>
sudo -u postgres psql -c "ALTER ROLE <<username>> WITH PASSWORD '<<password>>';"

sudo -i -u postgres
nexoc 0880

### Terminal Connect ******
su postgres
psql
\c mydb
SET role marat;
SELECT current_user, session_user;


# Uninstall and remove PostgreSQL on Debian Linux ***

You can use the apt-get command to completely remove PostgreSQL on a Debian-based distribution of Linux such as Linux Mint or Ubuntu:

sudo apt-get --purge remove postgresql
sudo apt-get purge postgresql*
sudo apt-get --purge remove postgresql postgresql-doc postgresql-common

********************************************************************************
### docker *****************************

https://docs.docker.com/engine/install/debian/

# Run the following command to uninstall all conflicting packages:
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done

# install:
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# check:
sudo docker run hello-world
docker compose version

### build docker
docker build -t myorg/myapp .
docker run -p 8080:8080 myorg/myapp
# go inside
docker run -ti --entrypoint /bin/sh myorg/myapp


### build docker compose
docker compose up --build -d
docker image ls -a
docker compose stop
docker container ls -a

docker compose ps -a
docker compose down

# remove images
test -> tag
contentkeeper-app -> repository
docker rmi test:latest

# delete containers:
docker container rm -f $(docker container ls -aq)
docker image prune -a

# mvn set up PATH variable for Maven
https://phoenixnap.com/kb/install-maven-debian
# create jar
mvn clean package


# java 21
https://jdk.java.net/archive/
cd
download -> unpack extract -> move to the sudo mv jdk-21.0.2/ /usr/local/jdk-21


sudo tee -a  /etc/profile.d/jdk21.sh<<EOF
export JAVA_HOME=/usr/local/jdk-21
export PATH=\$PATH:\$JAVA_HOME/bin
EOF

source /etc/profile.d/jdk21.sh

echo $PATH
java --version




