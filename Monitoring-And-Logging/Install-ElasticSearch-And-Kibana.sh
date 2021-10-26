#!/bin/bash
yum install java-1.8.0-openjdk.x86_64 -y
rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
yum install elasticsearch -y
yum install kibana -y

systemctl start elasticsearch
systemctl start kibana
systemctl enable elasticsearch
systemctl enable kibana