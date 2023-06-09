# Code snippets for python users

- [Code snippets for python users](#code-snippets-for-python-users)
  * [Useful snippets](#useful-snippets)
  * [Git snippets](#git-snippets)
  * [Print snippets](#print-snippets)
  * [Conda snippets](#conda-snippets)
  * [Seed snippets](#seed-snippets)
  * [Jupyter snippets](#jupyter-snippets)

## Useful snippets
-  Running IPython in the middle of running terminal script
```python3
import IPython; IPython.embed(); exit(1)
```

-  Running IPython in the middle of running terminal script
```python3
import os

# Specify the directory path
proj_dic = "/../../../nas001/projects/data/"

# List all files in the specified directory
files = os.listdir(proj_dic)

# Print the list of files
for file in files:
    print(file)
```

- `Jupyter(lab) server` server initialize snippet
```bash
jupyter lab --ip "*" --allow-root --no-browser --ContentsManager.allow_hidden=True
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
---

## Git snippets
- Git `clone` repository
```bash
git clone https://github.com/username/repository.git
```

- `Configure` your Git username and email
```bash
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
```

- `Check status` of your local repo
```bash
git status
```

-  `Add` changes to the staging area(local)
```bash
git add .                    # Add all changed files
git add file1.txt file2.txt  # Add specific files
```

- `Commit` changes staged on your Git
```bash
git commit -m "Your commit message"
```

- `Pull` changes from the remote repository
```bash
git pull origin main  # Replace 'main' with your default branch name, if different
```
- `Push` changes to the remote repository
```bash
git push origin main  # Replace 'main' with your default branch name, if different
```

- Create a new branch
```bash
git checkout -b new_branch_name
```

- Switch between branches
```bash
git checkout branch_name
```
- Git merge branch_name
```bash
git merge branch_name
```

- Delete a branch locally
```bash
git branch -d branch_name
```

- Delete a branch on the remote repository
```bash
git push origin --delete branch_name
```

- List all branches
```bash
git branch       # List local branches
git branch -a    # List local and remote branches
```

-  Remove existing remote repository
```bash
git remote remove origin
```

-  Add new remote repository
```bash
git remote add origin https://github.com/{ID}/{REPO}
```
---

## Tmux snippets
- open new tmux session named `jupyter-server`
```bash
tmux new -s jupyter-server
```

- attach currently opened tmux session by its name, `jupyter-server`
```bash
tmux attach -t jupyter-server
```

- to make new window in tmux session
```bash
# make window below
ctrl + b , shift + '

# make window right
ctrl + b,  shift + 5
```

- moving around tmux windows (maneuvering)
```bash
ctrl + b, arrow movements(←,→,↑,↓) 
````

- exiting tmux window
```bash
ctrl + b , d # 퇴장
# OR
exit # tmux 창 삭제
```

## Print snippets
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

---

## Seed snippets
- `seed` settings
```python3
import random
import torch
import numpy as np

def fix_seed(seed: int) -> None:
  torch.manual_seed(seed)
  torch.cuda.manual_seed(seed)
  torch.cuda.manual_seed_all(seed)
  torch.backends.cudnn.deterministic = True # this can slow down speed
  torch.backends.cudnn.benchmark = False
  np.random.seed(seed)
  random.seed(seed)
```

---

## Conda snippets
- `conda` settings
```bash
conda env list # get list of all my environments
conda create --name py38 python=3.8 # create conda environment
conda remove --name py38 --all # remove conda environment
conda list --revisions # check versions of my conda environment
conda install --revision 2 # conda rollback to revision state 2
```
- ✨ When 'conda activate' does not work 
```bash
source activate <name_of_enviroment>
```
---

## Jupyter snippets
- `ipykernel` setting
```bash
python -m ipykernel install --user --name py38 --display-name "py38"
```
---
