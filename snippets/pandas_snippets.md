# Pandas Snippets

## 데이터 읽기 및 쓰기

- CSV 파일로부터 데이터 읽기
  ```python
  import pandas as pd
  data = pd.read_csv('file.csv')
  ```

- Excel 파일로부터 데이터 읽기
  ```python
  data = pd.read_excel('file.xlsx')
  ```

- 데이터프레임을 CSV 파일로 저장하기
  ```python
  data.to_csv('output.csv', index=False)
  ```

- 데이터프레임을 Excel 파일로 저장하기
  ```python
  data.to_excel('output.xlsx', index=False)
  ```

## 기본 데이터 조작

- 데이터프레임의 첫 n개 행 보기
  ```python
  data.head(n)
  ```

- 데이터프레임의 랜덤한 n개 행 보기
  ```python
  data.sample(n)
  ```

- 특정 열 선택하기
  ```python
  selected_column = data['column_name']
  ```

- 조건에 따라 행 선택하기
  ```python
  selected_rows = data[data['column_name'] > 10]
  ```

- 중복 행 제거하기
  ```python
  data = data.drop_duplicates()
  ```

- 행과 열 수 세기
  ```python
  num_rows, num_cols = data.shape
  ```

## 데이터 그룹화와 집계

- 열의 고유값 개수 세기
  ```python
  unique_counts = data['column_name'].nunique()
  ```

- 그룹별 통계 계산
  ```python
  grouped_stats = data.groupby('group_column')['numeric_column'].mean()
  ```

- 피봇 테이블 생성
  ```python
  pivot_table = data.pivot_table(index='index_column', columns='columns_column', values='values_column', aggfunc='mean')
  ```

## 데이터 전처리

- 누락된 값 확인
  ```python
  missing_values = data.isnull().sum()
  ```

- 누락된 값 채우기
  ```python
  data_filled = data.fillna(value)
  ```

- 텍스트 데이터 대소문자 통일
  ```python
  data['text_column'] = data['text_column'].str.lower()
  ```

- 문자열에서 공백 제거
  ```python
  data['text_column'] = data['text_column'].str.strip()
  ```

- 문자열 분할 및 쪼개기
  ```python
  data[['first_name', 'last_name']] = data['full_name'].str.split(' ', expand=True)
  ```

## 시간 관련 작업

- 문자열을 날짜로 변환
  ```python
  data['date_column'] = pd.to_datetime(data['date_column'])
  ```

- 날짜에서 연도, 월, 일 추출
  ```python
  data['year'] = data['date_column'].dt.year
  data['month'] = data['date_column'].dt.month
  data['day'] = data['date_column'].dt.day
  ```
  
---

## 출력 옵션 관리

- 최대 출력 열 수 설정
  ```python
  pd.set_option('display.max_columns', 10)
  ```

- 최대 출력 행 수 설정
  ```python
  pd.set_option('display.max_rows', 10)
  ```

- 실수 출력 형식 설정
  ```python
  pd.set_option('display.float_format', '{:.2f}'.format)
  ```

## 컬럼 너비 조정

- 컬럼의 최대 너비 설정
  ```python
  pd.set_option('display.max_colwidth', 100)
  ```

## 출력 결과 숨기기

- 출력 결과 생략 막기
  ```python
  pd.set_option('display.max_info_columns', 1000)
  pd.set_option('display.max_info_rows', 1000)
  ```

## 대량 데이터 처리

- 대량 데이터프레임 부분 출력
  ```python
  data.iloc[start_row:end_row, start_col:end_col]
  ```

## DataFrame 스타일링

- 조건에 따라 스타일 적용
  ```python
  def highlight_negative(value):
      if value < 0:
          return 'color: red'
      else:
          return 'color: black'

  styled_data = data.style.applymap(highlight_negative, subset=['numeric_column'])
  ```

- 컬럼별 서식 적용
  ```python
  styled_data = data.style.format({'numeric_column': '{:.2f}', 'percentage_column': '{:.2%}'})
  ```

- 그라데이션 배경 적용
  ```python
  styled_data = data.style.background_gradient(cmap='viridis')
  ```

## 출력 결과 저장

- DataFrame을 HTML 파일로 저장
  ```python
  styled_data.to_html('styled_data.html')
  ```

- DataFrame을 이미지로 저장 (Pandas Plot 사용)
  ```python
  plot = data.plot(kind='bar')
  fig = plot.get_figure()
  fig.savefig('plot.png')
  ```
