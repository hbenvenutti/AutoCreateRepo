#!/usr/bin/env bash
#
# autoCreateRepo.sh - creates a github repo;
#
# Site: https://github.com/hbenvenutti/AutoCreateRepo
# Author: Huam Benvenutti
# Maintence: Huam Benvenutti
#
# ------------------------------------------------------------------------ #
# It creates a github repository and starts a git project in the current directory.
#
# Examples:
#
# $ autoCreateRepo <username>  <repo_name>
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

user="$1"
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
# It uses github api to connect;

echo "# $2" > README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin $origin
git push -u origin master
# ------------------------------------------------------------------------ #
