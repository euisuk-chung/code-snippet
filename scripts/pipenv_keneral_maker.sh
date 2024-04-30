#!/bin/bash

# 프로젝트 이름을 인자로 받습니다.
PROJECT_NAME=$1

# pipenv 환경으로 이동합니다.
cd $PROJECT_NAME

# pipenv 환경을 활성화합니다.
pipenv shell

# Jupyter와 ipykernel 패키지가 설치되어 있는지 확인하고, 없다면 설치합니다.
pipenv run pip install ipykernel #jupyter

# ipykernel을 사용하여 Jupyter 커널을 생성합니다.
pipenv run python -m ipykernel install --user --name=${PROJECT_NAME} --display-name=${PROJECT_NAME}

# 원래 디렉토리로 돌아옵니다.
cd ..

echo "${PROJECT_NAME}에 대한 Jupyter 커널이 생성되었습니다."
