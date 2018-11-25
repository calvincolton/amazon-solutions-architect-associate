#!/bin/bash
yum update -y
yum install httpd -y
service httpd start
chkconfig httpd on
aws s3 cp s3://test-us-east-1-virginia-bucket/index.html /var/www/html
