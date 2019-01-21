#!/bin/bash

apt-get -y update
apt-get -y upgrade

curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.8.2/bin/linux/amd64/kubectl

chmod +x ./kubectl

mv ./kubectl /usr/local/bin/kubectl

curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.24.1/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/

curl -LO https://storage.googleapis.com/minikube/releases/v0.24.1/docker-machine-driver-kvm2 && chmod +x docker-machine-driver-kvm2 && sudo mv docker-machine-driver-kvm2 /usr/bin/

apt install -y qemu-kvm libvirt-bin

addgroup libvirtd

adduser $USER libvirtd

minikube start --vm-driver kvm2