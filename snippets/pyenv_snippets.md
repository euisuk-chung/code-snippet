# pyenv 사용법

## pyenv 소개
- **pyenv**는 여러 버전의 Python을 관리할 수 있는 도구입니다. 이를 통해 프로젝트별로 필요한 Python 버전을 쉽게 설정하고 전환할 수 있습니다.

## Python 버전 설치
```bash
pyenv install 3.8.5  # 특정 Python 버전 설치
```
- 원하는 Python 버전을 설치합니다.

## Python 버전 설정
- 설치된 Python 버전을 로컬 또는 글로벌로 설정합니다.

- **로컬 설정** (특정 디렉토리에 적용):
  ```bash
  pyenv local 3.8.5
  ```

- **글로벌 설정** (시스템 전체에 적용):
  ```bash
  pyenv global 3.8.5
  ```

## 설치된 Python 버전 목록 확인
```bash
pyenv versions
```
- 설치된 모든 Python 버전을 확인할 수 있습니다.
네, pyenv 사용법에 관한 설명을 더 보강할 수 있습니다. 예를 들어, 사용 가능한 Python 버전 목록을 확인하는 방법과 시스템에 설치된 Python 버전을 pyenv에 반영하는 방법을 추가할 수 있습니다. 아래 내용을 참고해 주세요.

## 사용 가능한 Python 버전 목록 확인
```bash
pyenv install --list
```
- `pyenv install --list` 명령어를 사용하면 설치 가능한 모든 Python 버전의 목록을 확인할 수 있습니다. 이를 통해 원하는 버전을 정확하게 선택하여 설치할 수 있습니다.
