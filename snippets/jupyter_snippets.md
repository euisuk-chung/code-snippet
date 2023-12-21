# Jupyter snippets

- `Jupyter(lab) server` server initialize snippet
```bash
jupyter lab --ip "*" --allow-root --no-browser --ContentsManager.allow_hidden=True
```

- Install `ipykernel` 
```bash
pip install ipykernel
```

- Set `ipykernel` 
```bash
python -m ipykernel install --user --name py38 --display-name "py38"
```

- Check `ipykernel` list
```bash
jupyter kernelspec list
```

- Remove certain <kernel_name> `ipykernel` list
```bash
jupyter kernelspec uninstall <kernel_name>
```

- Jupyter number/row/column display snippets
```python3
import pandas as pd
import numpy as np

# Define the current settings as mentioned
pd.options.display.float_format = '{:,.2f}'.format
pd.options.display.max_rows = 3000

# Set option to display maximum columns
pd.options.display.max_columns = None

# For numpy, we can set print options, but it applies globally, not just in Jupyter.
np.set_printoptions(suppress=True, formatter={'float_kind':'{:,.2f}'.format})

# Display current settings to confirm
pd.get_option("display.max_rows"), pd.get_option("display.max_columns"), np.get_printoptions()
```
- ignore warnings
  ```python3
  import warnings
  warnings.filterwarnings('ignore')
  ```
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
