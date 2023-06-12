# Seed snippets
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