# Jupyter snippets
- `Jupyter` Korean Font install in Ubuntu Server
  ```bash
  import os
  import subprocess
  import matplotlib
  
  mpl_file = matplotlib.__file__
  mpl_file_loc = os.path.join(os.path.dirname(mpl_file), 'mpl-data', 'fonts', 'ttf')
  print(matplotlib.__file__)
  print(mpl_file_loc)
  
  # 폰트 복사
  command = f"cp /usr/share/fonts/truetype/nanum/Nanum* {mpl_file_loc}"
  subprocess.run(command, shell=True)
  ```

- `Jupyter(lab) server` server initialize snippet
    ```bash
    jupyter lab --ip "*" --allow-root --no-browser --ContentsManager.allow_hidden=True
    ```

- Install `ipykernel` 
    ```bash
    pip install ipykernel
    ```

- Set `ipykernel`
    - `Update` : works the same in pipenv environment (just run the code in pipenv shell)
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

