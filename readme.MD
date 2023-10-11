# influence.tech-operation

le depot DOCKER permet de recupérere deux fichiers sur l'applicance photon afin de télécharger et de mettre en service influenceTech

## 1.Getting started

Downloading Photon OS 5.0 RC
Ajuster DISK, CPU et RAM

Note: Because of limitations within OVA support on vSphere, it was necessary to specify a default password for the OVA option. However, all Photon OS instances that are created by importing the OVA require an immediate password change upon login. The default account credentials are:

- Username: ``root``
- Password: ``changeme``
After you provide these credentials, vSphere prompts you to create a new password and type it a second time to verify it.

## 2. modifier ip et  DNS et temps
vi /run/systemd/resolve/resolv.conf
vi /etc/systemd/network/25-eth.network

modifier le time zone
timedatectl set-timezone America/New_York

## 3.Run Docker

To run Docker from the command prompt, enter the following command, which initializes the docker engine:

 systemctl start docker
To ensure Docker daemon service runs on every subsequent VM reboot, enter the following command:

systemctl enable docker

## 4.Installation

tdnf update
tdnf install docker-compose
tdnf install git

## 5.telechargement du composer

git clone <https://github.com/RobbiLevesque/docker.git>
git pull

## 6. Recuperation des conteneurs

docker login
docker-compose pull
docker-compose up

### nettoyage du disque supression des docker inutilise

docker ps -f status=exited -q | xargs -r docker rm
docker images -f dangling=true -q | xargs -r docker rmi

## A. Mongo backup et restore

mongorestore  --host=192.168.0.164 --port=7017 --username=root --password=123456  mongodump
 mongodump --host=127.0.0.1 --port=27017 --db=influence --out=mongodump

## B. Disk resize

lunix commande
df pour lister les espace disque

fdisk -l
tdnf install parted
parted

print
resizepart x
resize2fs /dev/sdayy
