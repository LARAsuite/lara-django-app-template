#!/bin/bash
# run this only the first time within local master branch

echo "configuring git repository ..."

# renaming origin to github
git remote rename origin github 

# doing some cheking before commit
git log
git status

vim VERSION
vim CHANGELOG
vim README.rst

git add -i

read -p "Continue committing to master ... ? " -n 1 -r

git commit -a   #m "LARA app basic config files added"
git tag -a v0.0.1 -m 'Version 0.0.1'

# generatate github_master branch
git checkout -b github_master

git checkout master

# generatate first release branch from master
git checkout -b v0.1_release

# merging v0.1_release into github_master (squashing all single commits to one single)
git checkout github_master
git merge --squash v0.1_release

git commit -m "v0.0.1"
git tag v0.0.1 -m "v0.0.1"

# pushing github_master (=current HEAD ) to master (master) on github
# git push --tags destination source_branch:target_branch
git push --tags github HEAD:master

# merging github_master back to release
git checkout v0.1_release
git merge github_master

# also pushing everything to release
git push -u --tags github HEAD:v0.1_release

# coming back to master
git checkout master
git merge v0.1_release
