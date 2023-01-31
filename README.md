[![CircleCI](https://dl.circleci.com/status-badge/img/gh/PeterHuynh/microservices-project/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/PeterHuynh/microservices-project/tree/main)

## Project Overview

This project is about containerize a python AI application and run it on docker and kubernetes. The project is also setup to run code linting via CircleCI cloud managed CI/CD service

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

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create the app in Container
* Run via kubectl

### Test the app:
* run the script ./make_prediction.sh

### To replicate/scale app:
* run command: kubectl scale --replicas=3 rs/app_name
 
