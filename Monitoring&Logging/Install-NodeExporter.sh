!/bin/bash
cd /tmp
curl -LO https://github.com/prometheus/node_exporter/releases/download/v0.18.1/node_exporter-0.18.1.linux-amd64.tar.gz
tar -xvf node_exporter-0.18.1.linux-amd64.tar.gz
mv node_exporter-0.18.1.linux-amd64/node_exporter /usr/local/bin/
useradd -rs /bin/false node_exporter
systemctl daemon-reload
systemctl status node_exporter
systemctl enable node_exporter

#--- Prometheus cofiguration --- 
- vi /etc/prometheus/prometheus.yml
#- job_name: 'node_exporter_metrics'
#  scrape_interval: 5s
#  static_configs:
#    - targets: ['localhost:9100']
systemctl restart prometheus
