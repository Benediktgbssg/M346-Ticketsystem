#!/bin/bash
schluessel=aws-benedikt-cli.pem
#test von variabel
#echo $schluessel

#Gruppe ticketsystem-group erstellen
aws ec2 create-security-group --group-name ticketsystem-group --description "EC2-Webserver-und-Ticketsystem-group"

#Gruppe datenbank-group
aws ec2 create-security-group --group-name datenbank-group --description "EC2-datenbank-group"

#gruppe ticketsystem-group Rechte vergeben
aws ec2 authorize-security-group-ingress --group-name ticketsystem-group --protocol tcp --port 80 --cidr 0.0.0.0/0

#gruppe datenbank-groupe rechte vergeben 


#instance-ticketsystem
aws ec2 run-instances --image-id ami-08c40ec9ead489470 --count 1 --instance-type t2.micro --key-name $schluessel --security-groups ticketsystem-group --iam-instance-profile Name=LABInstanceProfile --user-data file://ticketsys.sh --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=ticketsys}]'


#instance-Database
aws ec2 run-instances --image-id ami-08c40ec9ead489470 --count 1 --instance-type t2.micro --key-name $schluessel --security-groups datenbank-group --iam-instance-profile Name=LABInstanceProfile --user-data file://datenbanksys.sh --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=datenbank}]'

