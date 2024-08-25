# Jupyter snippets
- `Jupyter` Korean Font install in Ubuntu Server
  ```bash
    # 한글 폰트가 없을 때
    ! sudo apt-get install fonts-nanum*
    
    import matplotlib
    import subprocess
    
    mpl_file = matplotlib.__file__
    mpl_file_loc = '/'.join(mpl_file.split('/')[:-1]) + '/mpl-data/fonts/ttf/'
    print(matplotlib.__file__)
    print(mpl_file_loc)
    
    # 폰트 복사
    subprocess.run(['cp', '/usr/share/fonts/truetype/nanum/Nanum*', mpl_file_loc], shell=True)
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

