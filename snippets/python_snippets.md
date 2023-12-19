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

def read_json(file_name):
    with open(f"./{file_name}.json", "r") as json_file:
        data = json.load(json_file) # load json
    return data

def save_json(file_name, json_to_save):
    with open(f"./{file_name}.json", "w") as json_file:
        json.dump(json_to_save, json_file) # save json
```

- `Pickle` load & save snippet
```python3
import pickle
def read_pkl(file_name):
    with open(f'{file_name}', 'rb') as f:
         data = pickle.load(f)
    return data

def write_pkl(file_name, file):
    with open(f'{file_name}', 'wb') as f:
         pickle.dump(file, f)
```
