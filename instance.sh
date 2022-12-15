# installation von curl
sudo apt update
sudo install curl 

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

#instance
aws ec2 run-instances --image-id ami-08c40ec9ead489470 --count 1 --instance-type t2.micro --key-name <schlüsselname> --security-groups <gruppenname> --iam-instance-profile Name=LABInstanceProfile --user-data file://xxxx --tag-specifications 'ResourceType=instance,Tags=[{Key=<name>,Value=<xxx>}]'


 
