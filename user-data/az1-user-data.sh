#!/bin/bash
apt-get update -y
apt-get install -y nginx

echo "<h1>Testing 1 - EC2 AZ1</h1>" > /var/www/html/index.html

systemctl enable --now nginx
