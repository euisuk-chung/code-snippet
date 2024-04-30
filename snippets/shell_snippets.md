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


  - screen: 새로운 가상 터미널 세션을 생성합니다.

  # Ctrl + A, D: 가상 터미널 세션을 백그라운드로 전환합니다.
  # screen -r <세션ID>: 특정 가상 터미널 세션으로 돌아갑니다.
  ```
