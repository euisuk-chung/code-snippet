- sklearn train_test_split 수행 (shuffle 주의)
  ```python3
    from sklearn.model_selection import train_test_split
    
    # 데이터프레임 df의 모든 컬럼을 제외하고 마지막 컬럼을 y로 설정
    y = df.iloc[:, -1]
    
    # 데이터프레임 df의 첫 번째 컬럼부터 마지막 컬럼 전까지를 X로 설정
    X = df.iloc[:, :-1]
    
    # train_test_split 함수를 사용하여 데이터 분할
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
    # X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.15, shuffle=False)
  ```
