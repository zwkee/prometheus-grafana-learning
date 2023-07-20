# Prometheus Grafana Learning
An experimental setup for learning common monitoring tools used in DevOps - Prometheus & Grafana

## Environment Setup
### Tools Required
1. [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. [Vagrant](https://developer.hashicorp.com/vagrant/downloads?product_intent=vagrant)

```sh
# Clone repository to local and change directory
git clone https://github.com/keezw/prometheus-grafana-learning.git
cd prometheus-grafana-learning
# Spin up the VMs needed to install Prometheus and Grafana
vagrant up
```

### Clean up environment
```sh
vagrant destroy
```