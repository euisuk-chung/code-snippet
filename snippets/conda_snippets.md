# Conda snippets
- `conda` settings
```bash
conda env list # get list of all my environments
conda create --name py38 python=3.8 # create conda environment
conda remove --name py38 --all # remove conda environment
conda list --revisions # check versions of my conda environment
conda install --revision 2 # conda rollback to revision state 2
conda install --revision 0 # convert conda to initial state
conda clean -a # clean conda cache
```

- ✨ When 'conda activate' does not work 
```bash
source activate <name_of_enviroment>
```
