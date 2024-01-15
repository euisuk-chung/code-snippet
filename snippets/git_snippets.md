# Git 사용법 및 명령어 정리

## Git 기본 설정
- **Git 저장소 복제(clone)**
  ```bash
  git clone https://github.com/username/repository.git
  ```
  원격 저장소를 로컬에 복제합니다.

- **Git 사용자 이름 및 이메일 설정**
  ```bash
  git config --global user.name "Your Name"
  git config --global user.email "youremail@example.com"
  ```
  Git에서 사용할 사용자 이름과 이메일을 설정합니다.

## 기본 Git 작업
- **Git 상태 확인**
  ```bash
  git status
  ```
  현재 작업 디렉토리의 상태를 확인합니다.

- **변경 사항 스테이징**
  ```bash
  git add .                    # 모든 변경된 파일 추가
  git add file1.txt file2.txt  # 특정 파일 추가
  ```
  변경된 파일들을 스테이징 영역에 추가합니다.

- **변경 사항 커밋**
  ```bash
  git commit -m "Your commit message"
  ```
  스테이징 영역에 추가된 변경 사항을 저장소에 커밋합니다.

- **원격 저장소에서 변경 사항 가져오기(pull)**
  ```bash
  git pull origin main  # 'main' 대신 기본 브랜치 이름을 사용하세요.
  ```
  원격 저장소의 변경 사항을 로컬 저장소로 가져옵니다.

- **변경 사항을 원격 저장소에 반영하기(push)**
  ```bash
  git push origin main  # 'main' 대신 기본 브랜치 이름을 사용하세요.
  ```
  로컬 저장소의 변경 사항을 원격 저장소에 반영합니다.

## Branch 관리
- **새로운 Branch 생성 및 전환**
  ```bash
  git checkout -b new_branch_name
  ```
  새로운 branch를 생성하고 해당 branch로 전환합니다.

- **Branch 간 전환**
  ```bash
  git checkout branch_name
  ```
  다른 branch로 전환합니다.

- **Branch 병합**
  ```bash
  git merge branch_name
  ```
  지정된 branch의 변경 사항을 현재 branch에 병합합니다.

- **Branch 삭제**
  - 로컬에서 삭제:
    ```bash
    git branch -d branch_name
    ```
  - 원격 저장소에서 삭제:
    ```bash
    git push origin --delete branch_name
    ```
  로컬 또는 원격 저장소의 branch를 삭제합니다.

- **모든 Branch 목록 확인**
  ```bash
  git branch       # 로컬 branch 목록 확인
  git branch -a    # 로컬 및 원격 branch 목록 확인
  ```
  로컬 및 원격 저장소의 모든 branch를 확인합니다.

## 추가 설정 및 관리
- **기존 원격 저장소 제거**
  ```bash
  git remote remove origin
  ```
  현재 저장소의 원격 저장소 연결을 제거합니다.

- **새 원격 저장소 추가**
  ```bash
  git remote add origin https://github.com/{ID}/{REPO}
  ```
  새 원격 저장소를 현재 저장소에 추가합니다.

알겠습니다. Git에서 충돌 관리 및 해결에 대한 설명을 추가하겠습니다.

---

# Git 충돌 관리 및 해결

## 충돌(Conflict)이란?

- Git에서 두 branch가 동일한 파일의 같은 부분을 다르게 수정하고 이를 병합하려 할 때 충돌이 발생합니다.
- 충돌이 발생하면, Git은 자동으로 병합을 완료하지 못하며, 수동으로 해결해야 합니다.

## 충돌 발생 확인

- 충돌이 발생하면, Git은 충돌이 발생한 파일을 명시하고, 해당 파일을 열어 충돌 부분을 확인해야 합니다.

## 충돌 부분 확인 및 해결

- 충돌이 일어난 파일을 열면, Git은 충돌 부분을 다음과 같이 표시합니다:

  ```plaintext
  <<<<<<< HEAD
  [현재 브랜치에서의 내용]
  =======
  [병합하려는 브랜치에서의 내용]
  >>>>>>> [병합하려는 브랜치 이름]
  ```

- 개발자는 이 부분을 수동으로 편집하여 두 버전 중 하나를 선택하거나 새로운 내용으로 수정해야 합니다.
- 수정 후, 충돌이 해결된 부분을 저장합니다.

## 충돌 해결 후

- 충돌이 해결된 후에는 수정된 파일을 다시 Git에 추가하고, 커밋을 생성하여 충돌 해결 과정을 완료합니다.
  ```bash
  git add [파일 이름]
  git commit -m "Resolve merge conflict"
  ```

## 주의 사항

- 충돌 해결 시, 코드의 일관성과 정확성을 유지하는 것이 중요합니다.
- 때로는 팀 내의 다른 개발자들과 협의하여 최선의 해결 방안을 찾는 것이 좋습니다.
