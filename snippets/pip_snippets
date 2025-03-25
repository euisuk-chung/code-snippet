# ✅ pip snippets – 기능별 정리

---

## 📦 패키지 설치 / 삭제 / 업그레이드

```bash
# 패키지 설치
pip install numpy
pip install pandas==1.5.3               # 특정 버전
pip install "requests>=2.25,<3.0"       # 버전 범위 지정

# 패키지 삭제
pip uninstall pandas

# 패키지 업그레이드
pip install --upgrade numpy
```

---

## 🔍 패키지 정보 확인 / 목록 보기

```bash
pip list                      # 설치된 패키지 목록
pip show pandas               # 특정 패키지 정보
pip list --outdated           # 업그레이드 가능한 패키지 확인
```

---

## 📁 requirements.txt 관련

```bash
pip freeze > requirements.txt          # 현재 환경 저장
pip install -r requirements.txt        # 환경 복원

pip freeze > dev-requirements.txt      # 개발용 패키지 따로 저장
```

> 💡 `pip freeze`는 `pip list`보다 재현성 있는 출력값을 제공합니다 (버전 고정됨).

---

## 🧹 pip 캐시 및 정리

```bash
pip cache dir                          # pip 캐시 경로 확인
pip cache list                         # 캐시에 저장된 패키지 목록
pip cache purge                        # 캐시 모두 삭제
```

---

## 🌐 설치 소스 지정 / 외부 경로 설치

```bash
# GitHub 등에서 설치
pip install git+https://github.com/psf/requests.git

# 로컬 디렉토리에서 설치
pip install ./mypackage

# .whl 파일로 설치
pip install some_package-0.1-py3-none-any.whl

# PyPI 미러 변경 (예: 카카오)
pip install pandas -i https://mirror.kakao.com/pypi/simple
```

---

## 🔧 패키지 설치 옵션들

```bash
# 옵션 설명
pip install . --no-deps         # 의존성 없이 설치
pip install -e .                # 개발 모드(Editable mode) 설치 (setup.py 있는 경우)
pip install --upgrade-strategy eager    # 업그레이드 전략 변경
```

---

## 🧪 가상환경 내 pip 사용 (venv)

```bash
# venv 생성
python -m venv venv

# 가상환경 활성화
source venv/bin/activate        # macOS/Linux
venv\Scripts\activate           # Windows

# 비활성화
deactivate

# pip 사용 예시
pip install pandas
```

---

## 🧰 pip 자체 업그레이드

```bash
# pip 최신 버전으로 업그레이드
python -m pip install --upgrade pip
```

---

## 🧭 문제 해결 시 유용한 옵션들

```bash
# 설치 시 디버깅
pip install somepkg -v          # verbose 모드
pip install somepkg --no-cache-dir  # 캐시 사용 안 함

# 설치 실패 시 로그 저장
pip install somepkg --log install.log
```

---

## 🧱 pipdeptree (의존성 시각화)

```bash
pip install pipdeptree
pipdeptree                    # 트리 형태로 의존성 출력
pipdeptree --reverse          # 역방향 의존성 확인
```

---

## 🧪 패키지 검사 및 보안 점검 (pip-audit)

```bash
pip install pip-audit
pip-audit                    # 보안 취약점 스캔
```

---

## ✨ 기타 꿀팁

```bash
# 패키지 검색
pip search pandas            # (최근 pip에서는 deprecated)

# 패키지를 특정 디렉터리에 설치
pip install numpy -t ./libs
```

---

## 📌 참고: conda 환경에서 pip 사용 시 주의

- `conda`와 `pip`을 혼용할 경우, 먼저 `conda`로 설치한 후, `pip`은 보조적으로 사용합니다.
- `pip install` 후에는 환경이 어긋나지 않도록 `conda list`로 상태를 점검합니다.
