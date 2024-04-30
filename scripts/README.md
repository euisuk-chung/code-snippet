# How to run a script

## Example: `add_write_permissions.sh` 

`add_write_permissions.sh` 스크립트의 사용 방법을 예시와 함께 설명드리겠습니다. 이 스크립트는 명령어 인자로 폴더 경로를 받아, 해당 폴더 및 하위 모든 파일과 폴더에 작성 권한을 부여합니다.

### 스크립트 사용 전 준비사항

1. **스크립트 파일 저장**: 스크립트 코드를 `add_write_permissions.sh`라는 파일에 저장합니다.
2. **실행 권한 부여**: 스크립트 파일에 실행 권한을 부여합니다. 이 작업은 스크립트를 실행 가능한 상태로 만듭니다.
   ```bash
   chmod +x add_write_permissions.sh
   ```

### 스크립트 사용 예시

#### 예시 1: 개인 문서 폴더에 권한 부여
- **경로**: `/home/user/Documents`
- **명령어**:
  ```bash
  ./add_write_permissions.sh /home/user/Documents
  ```
- **설명**: 이 명령어는 `/home/user/Documents` 폴더와 그 안에 있는 모든 파일 및 폴더에 사용자에게 작성 권한을 추가합니다.

#### 예시 2: 공유 프로젝트 폴더에 권한 부여
- **경로**: `/var/www/html/project`
- **명령어**:
  ```bash
  ./add_write_permissions.sh /var/www/html/project
  ```
- **설명**: 이 명령어는 웹 서버의 프로젝트 폴더 `/var/www/html/project` 및 그 안의 모든 내용에 대해 작성 권한을 부여합니다. 이를 통해 웹 개발 팀의 여러 사용자가 파일을 수정할 수 있습니다.

### 스크립트 실행 결과
- 스크립트를 실행하면, 지정된 경로와 그 안의 모든 파일 및 폴더에 작성 권한이 부여되고, 성공적으로 권한이 부여되었다는 메시지가 출력됩니다.

이러한 방식으로 스크립트를 사용하면 다양한 상황에서 필요한 폴더에 작성 권한을 쉽고 빠르게 부여할 수 있습니다.