#!/bin/bash
# Install AWS CLI v2 on Amazon Linux 2
set -e

sudo yum update -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"
unzip /tmp/awscliv2.zip -d /tmp
sudo /tmp/aws/install

echo "AWS CLI version:"
aws --version
