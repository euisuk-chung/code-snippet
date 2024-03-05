# Conda snippets
- `conda` settings
```bash
conda env list # get list of all my environments
conda create --name py39 python=3.9 # create conda environment
conda remove --name py39 --all # remove conda environment
conda list --revisions # check versions of my conda environment
conda install --revision 2 # conda rollback to revision state 2
conda install --revision 0 # convert conda to initial state
conda clean -a # clean conda cache
```

- activate jupyter kernelspec
```bash
# 해당 콘다 env 활성화 후
pip install ipykernel
python -m ipykernel install --user --name py39 
```

- ✨ When 'conda activate' does not work 
```bash
source activate <name_of_enviroment>
```

- Installing packages in `requirements.txt`
```bash
pip install -r requirements.txt
```
