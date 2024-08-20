#! /bin/bash  -x
dnf update -y
dnf install httpd -y
FOLDER=https://github.com/myhelper65/my-repository/blob/main/101-kittens-carousel-static-website-ec2/101-kittens-carousel-static-website-ec2/static-web
cd /var/www/html
wget ${FOLDER}/index.html
wget ${FOLDER}/cat0.jpg
wget ${FOLDER}/cat1.jpg
wget ${FOLDER}/cat2.jpg
wget ${FOLDER}/cat3.png
systemctl start httpd
systemctl enable httpd