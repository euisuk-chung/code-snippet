# 🔧 자주 쓰는 Git 브랜치 워크플로우

## 0) 현재 상태 점검

```bash
git status              # 변경 파일/스테이징 확인
git branch -vv          # 현재 브랜치 및 upstream(추적 브랜치) 확인
git branch -a           # 로컬+원격 전체 브랜치 목록

```

---

## 1) 새 브랜치 생성 → 커밋 → 원격 푸시 (업스트림 설정 포함)

```bash
# (A) 최신 기준 브랜치로 이동 후 동기화 (선택: develop/main 등)
git switch develop
git pull --ff-only

# (B) 새 브랜치 생성 및 전환
git switch -c feature/langfuse-image-handling
# == git checkout -b feature/langfuse-image-handling

# (C) 변경분 추가/커밋
git add src/utils/tracing.py tests/test_langfuse_agent.py
git commit -m "feat: Implement dual image handling for Langfuse tracing
- Exclude image_data when upload disabled
- Convert to LangfuseMedia when upload enabled
- Record processed_kwargs to trace; avoid large base64 in storage"

# (D) 원격 최초 푸시 + 업스트림 연결
git push -u origin feature/langfuse-image-handling

# (E) 이후부터는 간단히
git push    # origin/feature/langfuse-image-handling 로 자동 푸시
git pull    # 동일 브랜치로 자동 풀

```

- `u/--set-upstream`: 로컬 브랜치 ↔ 원격 브랜치 **추적 관계** 설정.
한 번 설정하면 이후 `git push/pull`만으로 대상이 자동 인식됩니다.

---

## 2) “원격에는 있는데 내 로컬에는 없는” 브랜치로 스위치하기

원격 목록이 최신이 아니라면 먼저 갱신합니다.

```bash
git fetch --all --prune

```

이후 전환:

```bash
# 방법 1) switch -c로 원격을 기준으로 로컬 브랜치 생성+전환
git switch -c fix/lambda-kwargs origin/fix/lambda-kwargs

# 방법 2) checkout으로도 가능
git checkout -b fix/lambda-kwargs origin/fix/lambda-kwargs

```

- 요점: **원격 브랜치 이름 앞에 `origin/`** 을 붙여서 기반을 명시하면,
해당 원격 브랜치를 **기준으로 로컬 브랜치가 만들어지고** 그 브랜치로 전환됩니다.

---

## 3) 내 로컬에 있는 **불필요한 브랜치 정리**

### 로컬 브랜치 삭제

```bash
# 안전 삭제(병합된 브랜치만 삭제)
git branch -d feature/old-experiment

# 강제 삭제(병합 여부 상관없이)
git branch -D feature/tmp-try

```

### 원격 브랜치 삭제

```bash
# origin 쪽 브랜치 제거
git push origin --delete feature/old-experiment
# 또는
git push origin :feature/old-experiment

```

### 원격에 사라진 브랜치 흔적(로컬 캐시) 정리

```bash
git fetch --prune

```

---

## 4) 자주 겪는 상황별 스니펫

### A. 현재 브랜치의 업스트림이 없어서 `git push`가 실패할 때

```bash
git push -u origin feature/langfuse-image-handling

```

또는 이미 존재하는 원격 브랜치에 연결만 다시 하려면:

```bash
git branch --set-upstream-to=origin/feature/langfuse-image-handling

```

### B. 잘못 만든 로컬 브랜치 이름을 바꾸고 싶을 때

```bash
# 현재 체크아웃된 브랜치 이름 변경
git branch -m new-name
# 다른 브랜치 이름 변경
git branch -m old-name new-name

```

### C. 최신 develop을 내 작업 브랜치에 가져와 리베이스(깨끗한 히스토리)

```bash
git switch feature/langfuse-image-handling
git fetch origin
git rebase origin/develop
# 충돌 해결 후
git add <수정파일>
git rebase --continue
# 이미 원격에 올린 브랜치라면 강제 푸시 필요할 수 있음
git push --force-with-lease

```

### D. “원격 브랜치 목록이 이상하게 오래됨”

```bash
git remote -v         # 원격 설정 확인
git fetch --all --prune

```

---

## 5) PR/MR 생성 (GitLab 예시)

```bash
# glab 사용 시
glab mr create \\
  --title "Improve Langfuse image handling" \\
  --source-branch feature/langfuse-image-handling \\
  --target-branch develop \\
  --fill

```

> CLI가 없다면 GitLab 웹에서 Merge Request 생성으로 동일하게 처리하면 됩니다.
> 

---

## 6) 네이밍 컨벤션(권장)

- `feature/<기능>`: 새 기능
- `fix/<버그>`: 버그 수정
- `refactor/<대상>`: 리팩토링
- `hotfix/<이슈>`: 프로덕션 긴급 수정
- 접두사 뒤에는 **간결하고 의미 있는 슬러그** 사용 (예: `feature/langfuse-image-handling`)

---

## ✅ 지금 바로 실행용 미니 레시피

```bash
# 1) 기준 동기화
git switch develop && git pull --ff-only

# 2) 새 브랜치
git switch -c feature/langfuse-image-handling

# 3) 커밋
git add src/utils/tracing.py tests/test_langfuse_agent.py
git commit -m "feat: Implement dual image handling for Langfuse tracing"

# 4) 푸시(+업스트림)
git push -u origin feature/langfuse-image-handling

```
