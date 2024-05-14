# 리눅스 파일 관리 명령어

## path init
```bash
export PATH="/usr/bin:$PATH"
```

## cp (copy)
`cp` 명령어는 파일 또는 디렉토리를 복사할 때 사용합니다. 파일을 다른 위치로 복사하거나, 파일의 이름을 변경하여 복사할 수 있습니다.

- 기본 사용법: `cp [옵션] <원본> <목적지>`
- 예시: `cp file1.txt backup_file1.txt` (file1.txt를 backup_file1.txt로 복사)
- 디렉토리 복사: `cp -r directory1 directory2` (directory1을 directory2로 재귀적으로 복사)

## mv (move)
`mv` 명령어는 파일이나 디렉토리의 위치를 이동하거나 이름을 변경할 때 사용합니다.

- 기본 사용법: `mv <원본> <목적지>`
- 예시: `mv file1.txt /home/user/Documents/` (file1.txt를 /home/user/Documents/로 이동)
- 이름 변경: `mv old_name.txt new_name.txt` (old_name.txt의 이름을 new_name.txt로 변경)

## rm (remove)
`rm` 명령어는 파일이나 디렉토리를 삭제합니다. 디렉토리를 삭제할 때는 `-r` 옵션을 사용해야 합니다.

- 기본 사용법: `rm [옵션] <파일명>`
- 예시: `rm file1.txt` (file1.txt 파일 삭제)
- 디렉토리 삭제: `rm -r folder1` (folder1 디렉토리와 그 내용을 재귀적으로 삭제)

## rmdir (remove directory)
`rmdir` 명령어는 비어 있는 디렉토리를 삭제합니다.

- 기본 사용법: `rmdir <디렉토리명>`
- 예시: `rmdir empty_folder` (비어 있는 디렉토리 empty_folder 삭제)

## mkdir (make directory)
`mkdir` 명령어는 새 디렉토리를 생성합니다.

- 기본 사용법: `mkdir <디렉토리명>`
- 예시: `mkdir new_folder` (new_folder라는 새 디렉토리 생성)

## ls (list)
`ls` 명령어는 디렉토리 내의 파일 및 다른 디렉토리 목록을 표시합니다.

- 기본 사용법: `ls [옵션] <디렉토리>`
- 예시: `ls -l /home/user/` (/home/user/ 디렉토리의 상세 목록 표시)

## chmod (change mode)
`chmod` 명령어는 파일 또는 디렉토리의 접근 권한을 변경합니다.

- 기본 사용법: `chmod [옵션] <권한> <파일명>`
- 예시: `chmod 755 script.sh` (script.sh에 대해 소유자는 읽기, 쓰기, 실행 권한을 갖고, 그룹과 다른 사용자는 읽기와 실행 권한만 부여)

## chown (change owner)
`chown` 명령어는 파일이나 디렉토리의 소유자 또는 그룹을 변경합니다.

- 기본 사용법: `chown [옵션] <사용자>:<그룹> <파일명>`
- 예시: `chown user:group file1.txt` (file1.txt의 소유자를 user로, 그룹을 group으로 변경)

## find
`find` 명령어는 파일이나 디렉토리를 검색할 때 사용합니다. 다양한 조건으로 검색이 가능합니다.

- 기본 사용법: `find <경로> [옵션]`
- 예시: `find /home/user -name "*.txt"` (/home/user 디렉토리에서 확장자가 .txt인 파일 검색)

## grep (global regular expression print)
`grep` 명령어는 파일 내에서 특정 텍스트 패턴을 검색할 때 사용합니다.

- 기본 사용법: `grep [옵션] <패턴> <파일명>`
- 예시: `grep "hello" file1.txt` (file1.txt에서 "hello" 문자열을 포함하는 행을 검색)
  
## ssh (Secure Shell)
`ssh`는 네트워크를 통해 다른 컴퓨터에 안전하게 접속할 때 사용하는 프로토콜입니다. 주로 서버나 리모트 시스템 관리에 사용됩니다.

- 기본 사용법: `ssh [옵션] <사용자명>@<호스트>`
- 예시: `ssh user@192.168.1.1` (192.168.1.1 주소의 컴퓨터에 user 계정으로 접속)

## scp (Secure Copy)
`scp`는 `ssh`를 이용하여 네트워크를 통해 파일을 안전하게 복사할 때 사용합니다.

- 기본 사용법: `scp [옵션] <원본> <목적지>`
- 예시: `scp local_file.txt user@192.168.1.1:/remote/directory/` (local_file.txt를 원격 호스트 192.168.1.1의 /remote/directory/ 디렉토리로 복사)

리눅스에서 사용자 계정을 추가하거나 삭제하는 명령어와 방법을 소개하겠습니다.

## adduser
`adduser` 명령어는 새로운 사용자 계정을 생성할 때 사용합니다. 이 명령어는 사용자 계정을 추가하고 필요한 디렉토리와 기본 설정을 자동으로 구성합니다.

- 기본 사용법: `adduser <사용자명>`
- 예시: `adduser newuser` (newuser라는 이름의 새로운 사용자 계정을 생성)

## useradd
`useradd` 명령어는 `adduser`와 비슷하지만, 더 많은 옵션을 제공합니다. 이 명령어를 사용할 때는 홈 디렉토리 생성과 같은 추가 작업이 필요할 수 있습니다.

- 기본 사용법: `useradd [옵션] <사용자명>`
- 예시: `useradd -m -s /bin/bash newuser` (newuser라는 이름의 새로운 사용자 계정을 생성하고, 홈 디렉토리를 생성하며, 기본 쉘을 /bin/bash로 설정)

## deluser
`deluser` 명령어는 기존 사용자 계정을 삭제할 때 사용합니다.

- 기본 사용법: `deluser <사용자명>`
- 예시: `deluser olduser` (olduser라는 이름의 사용자 계정을 삭제)

## userdel
`userdel` 명령어는 `deluser`와 비슷하지만, 더 많은 옵션을 제공합니다.

- 기본 사용법: `userdel [옵션] <사용자명>`
- 예시: `userdel -r olduser` (olduser라는 이름의 사용자 계정을 삭제하고, 홈 디렉토리와 메일 스풀을 함께 삭제)

## passwd
`passwd` 명령어는 사용자 계정의 비밀번호를 설정하거나 변경할 때 사용합니다.

- 기본 사용법: `passwd <사용자명>`
- 예시: `passwd newuser` (newuser의 비밀번호를 설정하거나 변경)

## usermod
`usermod` 명령어는 기존 사용자 계정의 속성을 수정할 때 사용합니다.

- 기본 사용법: `usermod [옵션] <사용자명>`
- 예시: `usermod -aG sudo newuser` (newuser를 sudo 그룹에 추가)

### 예제 코드
다음은 새로운 사용자를 추가하고, 비밀번호를 설정하고, sudo 권한을 부여하는 예제 시나리오입니다.

1. 새로운 사용자 계정 생성:
   ```bash
   adduser newuser
   ```
2. 비밀번호 설정:
   ```bash
   passwd newuser
   ```
3. 사용자에게 sudo 권한 부여:
   ```bash
   usermod -aG sudo newuser
   ```
