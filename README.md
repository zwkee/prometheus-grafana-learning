<a name="readme-top"></a>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/keezw/prometheus-grafana-learning">
    <img src="docs/assets/prometheus-logo.png" alt="Logo" width="80" height="80" style="margin: 0px 10px">
    <img src="docs/assets/grafana-logo.png" alt="Logo" width="80" height="80" style="margin: 0px 10px">
  </a>

<h3 align="center">Prometheus Grafana Learning</h3>

  <p align="center">
    An experimental setup for learning Prometheus & Grafana.
    <br />
    <br />
    <a href="https://github.com/keezw/prometheus-grafana-learning/issues">Report Bug</a>
    ·
    <a href="https://github.com/keezw/prometheus-grafana-learning/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

[Prometheus][Prometheus-url] and [Grafana][Grafana-url] are two popular open-source infrastructure monitoring tools used in the DevOps world. This project aims to provide a minimal setup of both tools in a single node Kubernetes environment for self-exploration and learning purposes. More applications can be added to the cluster to explore different metrics and visualization.

Refer to the section below on some of the tools used to setup the local environment. Vagrant and VirtualBox may not be required if the setup is expected to run on the host machine, but that will require Ansible to be installed and manually running the playbooks to spin up the Prometheus and Grafana resources in Kubernetes.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

* [![Ansible][Ansible-shield]][Ansible-url]
* [![K3S][k3s-shield]][k3s-url]
* [![Vagrant][Vagrant-shield]][Vagrant-url]
* [![Virtualbox][VirtualBox-shield]][VirtualBox-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

As mentioned in the introduction, there are a couple of tools required for the local development. Please install the tools below before proceeding with the setup.

* [Vagrant](https://developer.hashicorp.com/vagrant/downloads?product_intent=vagrant)
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

### Installation

1. Clone the repository

    ```sh
    git clone https://github.com/keezw/prometheus-grafana-learning.git
    ```

2. Change working directory

    ```sh
    cd prometheus-grafana-learning
    ```

3. Spin up virtual machines that will automatically install **Prometheus** and **Grafana**

    ```sh
    vagrant up
    ```

4. SSH into the virtual machine to get the Grafana credentials

    ```sh
    vagrant ssh
    cat grafana-creds.yml
    ```

5. Visit the Prometheus and Grafana dashboards on the host machine at [http://localhost:3000](http://localhost:3000) and [http://localhost:9090](http://localhost:9090). Login the Grafana dashboard using the credentials obtained from step 4.

### Clean up environment

1. Change directory into the cloned repo

    ```sh
    cd prometheus-grafana-learning
    ```

2. Destroy the created virtual machines

    ```sh
    vagrant destroy
    ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## Contributing

If you have a suggestion that would make this better, please fork the repo and create a pull request. Any form of contributions is greatly appreciated!

You can also open an issue with any bugs you found or any suggestions you have. Thank you!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Setup Prometheus and Grafana monitoring on Kubernetes cluster using Helm](https://medium.com/globant/setup-prometheus-and-grafana-monitoring-on-kubernetes-cluster-using-helm-3484efd85891)
* [How Prometheus Monitoring works | Prometheus Architecture explained](https://youtu.be/h4Sl21AKiDg)
* [README Template](https://github.com/othneildrew/Best-README-Template)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[Ansible-url]: https://www.ansible.com
[Ansible-shield]: https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white
[Grafana-url]: https://grafana.com
[k3s-url]: https://k3s.io
[k3s-shield]: https://camo.githubusercontent.com/7a7019489657c3e4397c997553bef15e15278811ea15146d15ea068cbbb8d950/68747470733a2f2f696d672e736869656c64732e696f2f7374617469632f76313f7374796c653d666f722d7468652d6261646765266d6573736167653d4b337326636f6c6f723d323232323232266c6f676f3d4b3373266c6f676f436f6c6f723d464643363143266c6162656c3d
[Prometheus-url]: https://prometheus.io
[Vagrant-shield]: https://camo.githubusercontent.com/bc72497405983d79f53f7727b62b5e1ef0d4019be97cce74c16225a0b67839f0/68747470733a2f2f696d672e736869656c64732e696f2f7374617469632f76313f7374796c653d666f722d7468652d6261646765266d6573736167653d56616772616e7426636f6c6f723d313836384632266c6f676f3d56616772616e74266c6f676f436f6c6f723d464646464646266c6162656c3d
[Vagrant-url]: https://www.vagrantup.com
[VirtualBox-shield]: https://camo.githubusercontent.com/2ffb5a9c4fe0e6147beea0e3a8e2e5688891c16184019fb7b9b4579b77600b0c/68747470733a2f2f696d672e736869656c64732e696f2f7374617469632f76313f7374796c653d666f722d7468652d6261646765266d6573736167653d5669727475616c426f7826636f6c6f723d313833413631266c6f676f3d5669727475616c426f78266c6f676f436f6c6f723d464646464646266c6162656c3d
[VirtualBox-url]: https://www.virtualbox.org
