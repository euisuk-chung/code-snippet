# Git snippets

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