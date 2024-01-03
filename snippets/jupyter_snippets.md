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

- Basic train_test_split 수행 (shuffle 주의)
```python3
import numpy as np

def custom_train_test_split(df, train_ratio=0.8, shuffle=False):
    """
    Custom function to split a DataFrame into train and test sets based on a specified ratio.
    
    :param df: Pandas DataFrame to be split
    :param train_ratio: Ratio of the dataset to be used as the training set
    :param shuffle: Boolean flag to shuffle the dataset before splitting
    :return: X_train, X_test, y_train, y_test
    """
    if shuffle:
        # Randomly shuffle the dataset
        df = df.sample(frac=1).reset_index(drop=True)
    
    # Calculate the index for splitting
    split_index = int(len(df) * train_ratio)
    
    # Split the DataFrame
    train_df = df.iloc[:split_index]
    test_df = df.iloc[split_index:]
    
    # Separate features and target
    X_train = train_df.iloc[:, :-1]
    y_train = train_df.iloc[:, -1]
    X_test = test_df.iloc[:, :-1]
    y_test = test_df.iloc[:, -1]
    
    return X_train, X_test, y_train, y_test
    
    # Example usage
    # X_train, X_test, y_train, y_test = custom_train_test_split(df, train_ratio=0.8, shuffle=False)
```
- print `pd.DataFrame` pretty✨ in jupyter cell
    ```python3
    from IPython.display import display, HTML
    display(HTML(df.to_html()))
    ```

- print time in `yyyy_mm_dd_hh_mm` format
    ```python3
    import time
    from time import strftime
    
    local_tm = time.localtime()
    save_format = strftime('%Y_%m_%d_%H_%M', local_tm)
    print(save_format)
    ```

- `Jupyter Notebook`에서의 display()
    ```python3
    from IPython.display import display
    display(f_cor)
    ```
