#!/bin/bash

BRANCH_NAME=$1
ZIP_FILE_PATH=$2
REPO_DIR="/home/runner/work/ph3ar-web/ph3ar-web"

# Check if the zip file exists
if [ ! -f "$ZIP_FILE_PATH" ]; then
  echo "Error: $ZIP_FILE_PATH not found."
  exit 1
fi

# Navigate to the repository directory
cd $REPO_DIR

# Unzip the changes into the repository directory
unzip -o $ZIP_FILE_PATH -d $REPO_DIR

# Add and commit the changes
git add .
git commit -m "Apply changes from $ZIP_FILE_PATH to $BRANCH_NAME"

# Push the changes to the remote repository
git push origin $BRANCH_NAME
