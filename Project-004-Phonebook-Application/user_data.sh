#! /bin/bash -x

yum update -y
yum install python3 -y
yum install python-pip -y
pip3 install Flask==2.3.3
pip3 install Flask-mySql
yum install git -y
echo "phonebook-instance.cfqkukec6tw9.us-east-1.rds.amazonaws.com" >  /home/ec2-user/dbserver.endpoint
cd /home/ec2-user
git clone https://github.com/myhelper65/my-repository.git
python3 /home/ec2-user/my-repository/Project-004-Phonebook-Application/phonebook-app.py
