#!/bin/bash

function create() {
    cd
    source .env
    python ~/projects/personal_info/projects/ProjectAutomationInitialization/create.py $1
    cd $FILEPATH$1
    git init
    git remote add origin git@github.com:$USERNAME/$1.git
    touch $FILEPATH$1/README.md
    git add .
    git commit -m "Initial commit"
    git push -u origin master
    code .
}
