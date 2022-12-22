#!/bin/bash
schluessel=aws-benedikt-cli.pem
#test von variabel
#echo $schluessel

#Gruppe ticketsystem-group erstellen
aws ec2 create-security-group --group-name ticketsystem-group --description "EC2-Webserver-und-Ticketsystem-group"

#Gruppe datenbank-group
aws ec2 create-security-group --group-name datenbank-group --description "EC2-datenbank-group"

#gruppe Rechte vergeben
aws ec2 authorize-security-group-ingress --group-name ticketsystem-group --protocol tcp --port 80 --cidr 0.0.0.0/0

# installation von curl
#sudo apt update
#sudo install curl 
#curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
#unzip awscliv2.zip
#sudo ./aws/install

#instance-ticketsystem
aws ec2 run-instances --image-id ami-08c40ec9ead489470 --count 1 --instance-type t2.micro --key-name $schluessel --security-groups ticketsystem-group --iam-instance-profile Name=LABInstanceProfile --user-data file://initial.txt --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=test1}]'


#instance-Database
#aws ec2 run-instances --image-id ami-08c40ec9ead489470 --count 1 --instance-type t2.micro --key-name <schlüsselname> --security-groups <gruppenname> --iam-instance-profile Name=LABInstanceProfile --user-data file://xxxx --tag-specifications 'ResourceType=instance,Tags=[{Key=<name>,Value=<xxx>}]'

