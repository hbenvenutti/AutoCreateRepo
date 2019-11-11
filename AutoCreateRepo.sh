#!/usr/bin/env bash
#
# mygit.sh - creates a github repo;
#
# Site: https://github.com/hbenvenutti/AutoCreateRepo
# Author: Huam Benvenutti
# Maintence: Huam Benvenutti
#
# ------------------------------------------------------------------------ #
# Creates a github repository and starts a git project in the current folder.
#
# Exemples:
#
# $ AutoCreateRepo username  repo_name
#
# ------------------------------------------------------------------------ #
# History:
#
# ------------------------------------------------------------------------ #
# Tested in:
#
# ------------------------------------------------------------------------ #
# Thanks:
#
#
# ------------------------------------------------------------------------ #
#
# --------------------------VARIABLES------------------------------------------#

user="$1" # set your github username here;
origin="https://github.com/${user}/${2}.git"
first='{"name":"'
last='"}'
full="${first}${2}${last}"

# TODO: Find a better way to join the strings and find better names.
#
# ------------------------------------------------------------------------ #
#
# -------------------------TESTS----------------------------------------------#
#
#echo ${ORIGIN}
#echo $full
# ------------------------------------------------------------------------ #
#
# -------------------------FUNCTIONS---------------------------------------------#
#
# ------------------------------------------------------------------------ #
#
# -------------------------EXECUTION--------------------------------------------#
curl -u "${user}" https://api.github.com/user/repos -d $full 
echo "# $2" > README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin $origin
git push -u origin master
# ------------------------------------------------------------------------ #
