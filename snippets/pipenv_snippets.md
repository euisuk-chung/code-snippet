# pipenv 사용법

## pipenv 소개
- **pipenv**는 Python 프로젝트의 종속성 관리 및 가상 환경 관리를 위한 도구입니다.

## pipenv를 이용한 프로젝트 설정
- 새로운 프로젝트 시작:
  ```bash
  pipenv --python 3.8
  ```
- Python 3.8을 사용하여 새로운 가상 환경을 생성합니다.

## 종속성 설치
- 프로젝트에 필요한 패키지 설치:
  ```bash
  pipenv install requests
  ```
- 필요한 패키지를 설치하고, Pipfile 및 Pipfile.lock을 업데이트합니다.

## 가상 환경 활성화
```bash
pipenv shell
```
- pipenv를 이용하여 생성된 가상 환경을 활성화합니다.

## 종속성 제거
- 특정 패키지 제거:
  ```bash
  pipenv uninstall requests
  ```
- 설치된 패키지를 제거합니다.

## 가상 환경 활성화
- 가상환경 제거:
  ```bash
  pipenv --rm
  ```

## 개발 의존성 관리
- 개발 중 필요하지만 실제 운영 환경에서는 필요 없는 패키지를 관리할 때는 `--dev` 옵션을 사용합니다.
  ```bash
  pipenv install pytest --dev
  ```
  - `pytest` 같은 테스트 라이브러리는 개발 의존성으로 추가됩니다. 이렇게 설치된 패키지는 `Pipfile`의 `[dev-packages]` 섹션에 목록화됩니다.

## 스크립트 실행
- `pipenv run` 명령을 사용하여 가상 환경 내에서 스크립트나 프로그램을 직접 실행할 수 있습니다.
  ```bash
  pipenv run python script.py
  ```
  - 이 명령은 가상 환경을 활성화하지 않고도 `script.py` 파일을 실행합니다.

## 종속성 그래프 시각화
- 프로젝트의 종속성 트리를 시각화하여 어떤 패키지가 다른 패키지에 의존하는지 쉽게 파악할 수 있습니다.
  ```bash
  pipenv graph
  ```
  - `pipenv graph` 명령은 설치된 패키지와 그 의존성을 나열하여 보여줍니다.

## Lock 파일 생성
- `Pipfile.lock` 파일을 생성하여 프로젝트의 종속성을 확실히 고정합니다. 이 파일은 모든 의존성을 정확한 버전과 함께 기록하여 프로젝트가 다른 환경에서도 동일하게 작동하도록 보장합니다.
  ```bash
  pipenv lock
  ```

## 도커와의 통합
- Dockerfile 내에서 pipenv를 사용하여 종속성을 관리하고 가상 환경을 설정할 수 있습니다.
  ```dockerfile
  FROM python:3.8-slim
  RUN pip install pipenv
  COPY . /app
  WORKDIR /app
  RUN pipenv install --deploy --ignore-pipfile
  CMD ["pipenv", "run", "python", "app.py"]
  ```
  - 이 방법은 Docker 컨테이너 내에서 pipenv를 사용하여 안정적이고 일관된 환경을 구성하는 데 도움을 줍니다.