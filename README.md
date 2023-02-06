# Daily used Code Snippets for python users

- Print time in '%Y-%m-%d'format
```python3
import time
from time import strftime

local_tm = time.localtime()
format = strftime('%Y-%m-%d', local_tm)
```

-  Running IPython in the middle of running terminal script
  ```python3
  import IPython; IPython.embed(); exit(1)
  ```

- JSON load & save
  ```python3
  import json
  # load json
  with open("./name.json", "r") as json_file:
      data = json.load(json_file)
    
  # save json
  with open("./name.json", "w") as json_file:
      json.dump(your_json, json_file)
  ```
  
  - Set seed (including pytorch)
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
  
  # conda related stuffs
  ```bash
  conda env list # get list of all my environments
  conda create --name py38 python=3.8 # create conda environment
  conda remove --name py38 --all # remove conda environment
  conda list --revisions # check versions of my conda environment
  conda install --revision 2 # conda rollback to revision state 2
  ```
