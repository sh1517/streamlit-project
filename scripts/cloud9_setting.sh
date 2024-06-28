#!/bin/bash

# Create a new directory named 'cloud9_settings' and navigate into it
mkdir cloud9_settings
cd cloud9_settings

# Initialize a new Git repository in the current directory
dnf install git -y
git init
git config --global init.defaultBranch main

# Enable sparse-checkout to allow partial cloning of the repository
git config core.sparseCheckout true

# Add a remote repository URL and fetch the data from it
git remote add origin https://github.com/sh1517/streamlit-project.git

# Specify the directories to include in the sparse checkout
echo "scripts/" >> .git/info/sparse-checkout
echo "support_files/" >> .git/info/sparse-checkout

# Pull the specified directories from the main branch of the remote repository
git pull origin main