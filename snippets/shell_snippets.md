- Remove multiple conda evs
  ```bash
  #!/bin/bash
  for env in mad pad prophet prophet_env py38 pycaret pyod; do
    conda env remove --name $env
  done
  ```

- 지정한 위치의 폴더를 Data 폴더로 이동합니다.
  ```bash
  #!/bin/bash
   
  # 복사할 대상 폴더 경로를 지정합니다.
  source_folder="/nas001/projects/Good_Return/Experiments"
   
  # 'Data' 폴더가 존재하는지 확인하고, 없으면 생성합니다.
  if [ ! -d "Data" ]; then
      echo "Data 폴더가 존재하지 않아 새로 생성합니다."
      mkdir Data
  fi
   
  # TRAIN과 TEST 폴더를 Data 폴더 아래로 복사합니다.
  cp -r "$source_folder/TRAIN" Data/
  cp -r "$source_folder/TEST" Data/
   
  echo "TRAIN과 TEST 폴더가 Data 폴더 아래로 복사되었습니다."
  ```
- 모든 파일 및 폴더에 작성 권한 추가: 이 스크립트는 titled 폴더와 그 안의 모든 파일 및 하위 폴더에 작성 권한을 추가합니다.
  ```bash
  #!/bin/bash
  
  # titled 폴더와 그 안의 모든 파일 및 폴더에 작성 권한 추가
  chmod -R u+w titled/
  ```

- kill 파이썬 세션
  ```bash
  pkill python
  ```
  - pkill python 명령어를 사용하여 "python"이라는 이름을 가진 모든 파이썬 프로세스를 종료합니다. 이 명령어는 실행 중인 모든 파이썬 프로세스를 종료합니다.
  - pkill -f script.py 명령어를 사용하여 "script.py"라는 이름을 가진 파이썬 스크립트를 실행 중인 프로세스를 종료합니다. 이 명령어는 실행 중인 "script.py" 파일을 종료합니다.

- 기타 주요 프로세스
  ```
  # ps: 현재 실행 중인 프로세스 목록을 보여줍니다.
  - ps aux: 모든 사용자의 프로세스를 자세히 보여줍니다.
  - ps -ef: 프로세스 계층 구조를 트리 형태로 보여줍니다.
  - top: 실시간으로 시스템의 프로세스 상태를 모니터링합니다. CPU, 메모리, 프로세스 등의 정보를 제공합니다. q를 눌러 종료할 수 있습니다.

  # kill: 특정 프로세스를 종료합니다.
  - kill <PID>: 특정 PID의 프로세스를 종료합니다.
  - killall <프로세스명>: 특정 프로세스명을 가진 모든 프로세스를 종료합니다.

  # nohup: 프로세스를 백그라운드에서 실행하고 터미널 세션이 종료되어도 계속 실행되도록 합니다.
  - nohup <명령어> &: 명령어를 백그라운드에서 실행합니다. 출력은 nohup.out 파일에 저장됩니다.

  # bg와 fg: 프로세스를 백그라운드로 보내거나 포그라운드로 가져옵니다.
  - bg <작업번호>: 현재 실행 중인 작업을 백그라운드로 보냅니다.
  - fg <작업번호>: 백그라운드로 보낸 작업을 포그라운드로 가져옵니다.

  # jobs: 현재 실행 중인 작업 목록을 보여줍니다.

  # screen: 가상 터미널 세션을 생성하고 여러 작업을 동시에 실행하고 관리할 수 있습니다.
  - screen: 새로운 가상 터미널 세션을 생성합니다.

  # Ctrl + A, D: 가상 터미널 세션을 백그라운드로 전환합니다.
  # screen -r <세션ID>: 특정 가상 터미널 세션으로 돌아갑니다.
  ```
