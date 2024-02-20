# Python Snippets
-  Running IPython in the middle of running terminal script
    ```python3
    import IPython; IPython.embed(); exit(1)
    ```

-  Print list of files under specified directory path
    ```python3
    import os
    
    def check_under_folder(proj_loc):
        # List all files in the specified directory
        files = os.listdir(proj_loc)
        
        full_paths = []
        
        # Get the full path for each file
        for file in files:
            full_path = os.path.join(proj_loc, file)
            full_paths.append(full_path)
        
        return full_paths
    
    train = check_under_folder("/nas001/projects/TRAIN/")
    test = check_under_folder("/nas001/projects/TEST/")
    ```

- `JSON` load & save snippet
    ```python3
    import json
    
    def read_json(file_name, save_loc=None):
        """
        Read data from a JSON file.
    
        Args:
            file_name (str): Name of the JSON file.
            save_loc (str, optional): Location to save the JSON file. Defaults to None.
    
        Returns:
            data: Data loaded from the JSON file.
        """
        with open(f"{save_loc}/{file_name}.json", "r") as json_file:
            data = json.load(json_file)
        return data
    
    def save_json(file_name, file, save_loc=None):
        """
        Save data to a JSON file.
    
        Args:
            file_name (str): Name of the JSON file.
            file: Data to be saved in the JSON file.
            save_loc (str, optional): Location to save the JSON file. Defaults to None.
        """
        with open(f"{save_loc}/{file_name}.json", "w") as json_file:
            json.dump(file, json_file)
    ```

- `Pickle` load & save snippet
    ```python3
    import pickle
    def read_pkl(file_name, save_loc=None):
        """
        Read data from a pickle file.
    
        Args:
            file_name (str): Name of the pickle file.
            save_loc (str, optional): Location to save the pickle file. Defaults to None.
    
        Returns:
            data: Data loaded from the pickle file.
        """
        with open(f"{save_loc}/{file_name}.pkl", "rb") as f:
            data = pickle.load(f)
        return data
    
    def write_pkl(file_name, file, save_loc=None):
        """
        Write data to a pickle file.
    
        Args:
            file_name (str): Name of the pickle file.
            file: Data to be saved in the pickle file.
            save_loc (str, optional): Location to save the pickle file. Defaults to None.
        """
        with open(f"{save_loc}/{file_name}.pkl", "wb") as f:
            pickle.dump(file, f)
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
