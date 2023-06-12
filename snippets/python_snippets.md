# Python Snippets
-  Running IPython in the middle of running terminal script
```python3
import IPython; IPython.embed(); exit(1)
```

-  Print list of files under specified directory path
```python3
import os

# Specify the directory path
proj_dic = "/nas001/projects/data/"

# List all files in the specified directory
files = os.listdir(proj_dic)

# Print the list of files
for file in files:
    print(file)
```

- `JSON` load & save snippet
```python3
import json
with open("./name.json", "r") as json_file:
    data = json.load(json_file) # load json

with open("./name.json", "w") as json_file:
    json.dump(your_json, json_file) # save json
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