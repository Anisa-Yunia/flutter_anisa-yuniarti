# Version Control And Branch Management

### 1. GIT
Salah satu version control system populer yang digunakan para developer untuk mengembangkan software secara bersama-sama.

Git melacak semua file nya berubah.


### 2. GIT INSTALL & SETTING UP
Git dapat di install di Mac, Windows, Linux

git setting up
- git config :  
 - git config --global user.name "john doe"
 - git config --global user.email "johndoe@mail.com"
- git init
- git clone
- git status
- git add
- git commit -m
- git diff
- git stash
- git log
- git check out
- git reset

### 3. GIT SYNCING & BRANCHING 
- git push
- git fetch
- git pull

- git branch :
    - to show all branch : git branch --list
    - to create new branch : git branch <branch>
    - to force delete spesific branch : git branch -D <branch>
    - to list remote branch : git branch -a

- git merge:
 - to start a new feature:  git checkout -b new-feature master
 - to edit some files: 
    - git add <file>
    - git commit -m "Start a feature"
 - to edit some files: 
    - git add <file>
    - git commit -m "finish a feature"
 - to merge in the new-feature branch:
    - git checkout master
    - git merge new-feature
    - git branch -d new-feature 