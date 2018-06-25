#!/bin/bash
#run this when doing bug-fix releases - do this from release branch

if [ "$#" -ne 2 ]; then
    echo "Please specify release and version !"
    echo "gitrelease.sh v0.1_release v0.0.3"
    exit
fi

echo release : $1
echo version : $2

# checking before commit
    
vim VERSION
vim CHANGELOG

git add -i

echo "Please make sure, that all bugs are fixed ;)"
read -p "Continue committing ... ? " -n 1 -r

#git checkout $1 # go into release
#git merge master
#vim VERSION
#vim CHANGELOG
#git add -i

git commit -a

#git checkout github_master
#git merge --squash $1 # could be added--strategy-option theirs

#echo git commit -m \"$2\"
#git commit -m \"$2\"

#echo git tag  $2 -m "$2"
#echo git tag  $2 -m \"$2\"
git tag  $2 -m \"$2\"

# pushing github_master (=current HEAD ) to master (master) on github
# git push --tags destination source_branch:target_branch

#git push --tags github HEAD:$1

#git push --tags github github_master
read -p "Continue committing ... ? " -n 1 -r


# merging github_master back to release
#git checkout $1
#git merge github_master

# also pushing everything to release
git push --tags github HEAD:$1
# ?? git push github $1

read -p "Continue committing ... ? " -n 1 -r

# merging release back into master
git checkout master
#git merge $1
