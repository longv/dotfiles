#!/bin/bash

git config --global user.name "longv"

# COMMAND
git config --global --replace-all alias.stt status
git config --global --replace-all alias.logo "log --oneline --decorate"
git config --global --replace-all alias.ci commit
git config --global --replace-all alias.amend "ci --amend"
