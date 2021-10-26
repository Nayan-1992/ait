#!/bin/bash
yum install java-1.8.0-openjdk.x86_64
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.9.2-x86_64.rpm
rpm -ivh elasticsearch-7.9.2-x86_64.rpm
systemctl enable elasticsearch.service
systemctl start elasticsearch.service
rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
yum install kibana -y