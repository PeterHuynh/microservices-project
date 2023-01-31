[![CircleCI](https://dl.circleci.com/status-badge/img/gh/PeterHuynh/microservices-project/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/PeterHuynh/microservices-project/tree/main)

## Project Overview

This project is about containerize a python AI/ML application and run it on docker and kubernetes. The project is also setup to run code linting via CircleCI cloud managed CI/CD service

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally on ubuntu 20.04
    
    sudo apt install docker-ce

* Setup and Configure Kubernetes locally on ubuntu 20.04 machine
 
    Instruction link: https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
    1. download kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

    2. install kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

* Create the app in Container - please refer to run_docker.sh script for more details

    docker run -it -p 8000:80 peterhuynh99/microservices:v1.0.1

* Run via kubectl - please refer to run_kubernetes.sh script for more details

    kubectl run deployment_name --image=dockerpath --port=80 --labels app=app_name

    3. Install minikube on Linux Ubuntu 20.04 

    Instruction link: https://minikube.sigs.k8s.io/docs/start/

    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    
    sudo install minikube-linux-amd64 /usr/local/bin/minikube

    4. Start minikube

        minikube start

### Test the app:
* run the script ./make_prediction.sh

### To replicate/scale app:
* run command: kubectl scale --replicas=3 rs/app_name
 
