# Jupyter snippets

- `Jupyter(lab) server` server initialize snippet
    ```bash
    jupyter lab --ip "*" --allow-root --no-browser --ContentsManager.allow_hidden=True
    ```

- Install `ipykernel` 
    ```bash
    pip install ipykernel
    ```

- Set `ipykernel`
    - `Update` : works the same in pipenv environment
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

