[![CircleCI](https://circleci.com/gh/dejarc/project-ml-microservice-kubernetes/tree/main.svg?style=svg)](https://circleci.com/gh/dejarc/project-ml-microservice-kubernetes/tree/main)

## Summary

The purpose of this project was to apply the skills I have acquired in this course to create a functioning
Machine Learning Microservice API.
This project launches a Python flask app in the file `app.py` that generates predictions about housing prices
through API calls.
I was provided a pre-trained, `sklearn` model that was trained to predict housing prices in Boston according to several
features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, etc.
## Setup the Environment

* Create and source a virtualenv ```python3 -m venv ~/.devops && source ~/.devops/bin/activate```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker (requires preinstallation of docker):  `./run_docker.sh`
3. Run in Kubernetes (requires preinstallation of docker + kubernetes):  `./run_kubernetes.sh`

### Files

* `app.py` - The flask app
* `docker_out.txt` - The log statements generated by running `make_prediction.sh` script
* `Dockerfile` - Starts the flask app in docker
* `install_hadolint.sh` - Installs hadolint for mac and linux (requires root privileges)
* `kubernetes_out.txt` - The output generated for the `make_prediction.sh` script when running the flask app in kubernetes
* `make_prediction.sh` - A sample curl request for the flask app
* `Makefile` - A set of commands to setup a virtual environment, install dependencies, and lint the application
* `requirements.txt` - The requirements for the flask app
* `run_docker.sh` - The script that builds and runs the flask app in docker
* `run_kubernetes.sh` - The script that runs the flask app in kubernetes
* `upload_docker.sh` - The script that uploads the app to Docker Hub  
