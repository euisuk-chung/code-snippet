#!/bin/bash
 
if command -v conda &> /dev/null; then
    echo "conda is currently running. Attempting to deactivate..."
    conda deactivate
    if [ -n "$CONDA_SHLVL" ] && [ "$CONDA_SHLVL" -gt "0" ]; then
        echo "Trying to exit from base environment..."
        conda deactivate
    fi
fi
 
# 콘다 자동 init 취소 
conda config --set auto_activate_base false

# 필요한 의존성 설치 (Ubuntu/Debian 기준)
sudo apt-get update -y && sudo apt-get upgrade -y

sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl git llvm python3-openssl \
libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev \
libffi-dev liblzma-dev
 
# pyenv 설치
if [ ! -d "${HOME}/.pyenv" ]; then
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
else
    echo "pyenv is already installed"
fi
 
# 환경 변수 설정 확인 및 추가
BASHRC=~/.bashrc
PYENV_ROOT='export PYENV_ROOT="$HOME/.pyenv"'
PATH_UPDATE='export PATH="$PYENV_ROOT/bin:$PATH:~/.local/bin"'
INIT_COMMAND='eval "$(pyenv init --path)"'
#VIRTUALENV_INIT='eval "$(pyenv virtualenv-init -)"'
 
# PYENV_ROOT 추가
if ! grep -Fxq "$PYENV_ROOT" $BASHRC; then
    echo $PYENV_ROOT >> $BASHRC
fi
 
# PATH 업데이트 추가
if ! grep -Fxq "$PATH_UPDATE" $BASHRC; then
    echo $PATH_UPDATE >> $BASHRC
fi
 
# pyenv init 추가
if ! grep -Fxq "$INIT_COMMAND" $BASHRC; then
    echo $INIT_COMMAND >> $BASHRC
fi
 
# pyenv virtualenv-init 추가
if ! grep -Fxq "$VIRTUALENV_INIT" $BASHRC; then
    echo $VIRTUALENV_INIT >> $BASHRC
fi
 
echo "pyenv setup is completed. Please restart your shell or run 'source ~/.bashrc'"
