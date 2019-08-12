## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

setup:
	# Create python virtualenv & source it
	# source ~/.devops/bin/activate
	python3.7 -m venv ~/.devops

install:
	# This should be run from inside a virtualenv
	pip3.7 install --upgrade pip &&\
		pip3.7 install -r requirements.txt

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203 app.py
console:
	python3.7
start-app:
	python3.7 app.py
activate:
	source ~/.devops/bin/activate
mininkube-start:
	minikube start
check_kubenetes_deployment:
	kubectl get deployments
minikubeboard:
	minikube dashboard
servicestart:
	minikube service house-prediction
validate-circleci:
	circleci config process .circleci/config.yml
run-circleci-local:
	circleci local execute
all: install lint test
