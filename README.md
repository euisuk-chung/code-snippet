# Code snippets for python users

- [Code snippets for python users](#code-snippets-for-python-users)
  * [Useful snippets](#useful-snippets)
  * [Git snippets](#git-snippets)
  * [Print snippets](#print-snippets)
  * [Setting snippets](#setting-snippets)

## Useful snippets
-  Running IPython in the middle of running terminal script
```python3
import IPython; IPython.embed(); exit(1)
```

- `Jupyter server(lab)` server initialize snippet
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
with open(./name.pkl", 'rb') as f:
     data = pickle.load(f) # load pkl
     
with open("./name.pkl", "wb") as f:
    pickle.dump(your_pkl, f) # save pkl
```
---

## Git snippets
-  git pull / add / commit / push
```bash
git pull
git add .
git commit -m "message_to_commit"
git push --all
```
-  remove existing remote repository
```bash
git remote remove origin
```
-  add new remote repository
```bash
git remote add origin https://github.com/{ID}/{REPO}
```
---

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

## Setting snippets
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

- `conda` settings
```bash
conda env list # get list of all my environments
conda create --name py38 python=3.8 # create conda environment
conda remove --name py38 --all # remove conda environment
conda list --revisions # check versions of my conda environment
conda install --revision 2 # conda rollback to revision state 2
```
---
