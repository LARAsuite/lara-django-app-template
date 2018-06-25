#!/bin/bash
# setting up new LARA django app (things that are left from django-admin)

if [ "$#" -ne 1 ]; then
    echo "Please specify new app name !"
fi

# renaming subdirectories and the app directories
mv lara_app/templates/lara_app lara_app/templates/$1
mv lara_app/static/lara_app lara_app/static/$1

mv lara_app $1
mv lara_app_demo $1_demo

# removing stuff from the template
rm README.rst
rm TODO.rst
rm CHANGELOG

# renaming the templates to real files
mv docs/index.rst-tpl docs/index.rst
mv CHANGELOG.rst-tpl CHANGELOG
mv README.rst-tpl README.rst
mv TODO.rst-tpl TODO.rst

