#!/bin/bash
apt-get update -y
apt-get install -y nginx

echo "<h1>Testing 2 - EC2 AZ2</h1>" > /var/www/html/index.html

systemctl enable --now nginx
