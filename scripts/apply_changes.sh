#!/bin/bash

BRANCH_NAME=$1
ZIP_FILE_PATH=$2
REPO_DIR="$GITHUB_WORKSPACE/ph3ar-web"

# Navigate to the repository directory
cd $REPO_DIR

# Switch to the specified branch
git checkout $BRANCH_NAME

# Unzip the changes into the repository directory
unzip -o $ZIP_FILE_PATH -d $REPO_DIR

# Remove any .git directories to avoid conflicts
find $REPO_DIR -name ".git" -exec rm -rf {} +

# Add and commit the changes
git add .
git commit -m "Apply changes from $ZIP_FILE_PATH to $BRANCH_NAME"

# Push the changes to the remote repository
git push origin $BRANCH_NAME
