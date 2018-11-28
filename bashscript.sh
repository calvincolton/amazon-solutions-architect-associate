#!/bin/bash
yum update -y
yum install httpd -y
aws s3 cp s3://test-us-east-1-virginia-bucket /var/www/html --recursive
service httpd start
chkconfig httpd on
