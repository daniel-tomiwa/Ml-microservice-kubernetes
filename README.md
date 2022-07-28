[![CircleCI](https://dl.circleci.com/status-badge/img/gh/daniel-tomiwa/Ml-microservice-kubernetes/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/daniel-tomiwa/Ml-microservice-kubernetes/tree/master)

## Project Overview

In this project, skills learnt through the course are applied to operationalize a Machine Learning Microservice API. 

WE were given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project was used to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. The project includes:
* Testing code using linting
* Dockerfile to containerize this application
* Deploying the containerized application using Docker and make a prediction
* Including the log statements in the source code for this application
* Configuring Kubernetes and creating a Kubernetes cluster
* Deploying a container using Kubernetes and make a prediction
* Uploading a complete Github repo with CircleCI to indicate that the code has been tested

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
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
* Create Flask app in Container
* Run via kubectl

### General file description

* The .circleci folder contains the `config.yml` file for building the job for project tesing and linting
* The model_data folder contains the model file in joblib format and the `housing.csv` data
* The output_txt_files folder contains the text files showing the output of running the execution scripts: `run_docker.sh`, `run_kubernetes.sh`
* The `app.py` file containes the source code for the model prediction.
* The Dockerfile is used to containerize the application 
* The `make_prediction.sh` file is used to send a post request to the port of the running container when spun
* The `requirement.txt` file contains the needed dependencies for the application
