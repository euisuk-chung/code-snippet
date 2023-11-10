# Print snippets
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
