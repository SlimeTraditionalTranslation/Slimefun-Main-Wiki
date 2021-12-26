#!/bin/bash

echo "Deleting .git folder..."
rm -rf .git

echo "Clone Website Repository..."
git clone https://github.com/SlimeTraditionalTranslation/SlimeTraditionalTranslation.github.io.git SlimeTraditionalTranslation-Web
cd SlimeTraditionalTranslation-Web || exit

echo "Replace pages"
cd content/zh-tw/docs/ || exit
rm -rf slimefun/
#cp -r ../../../../pages/ slimefun
cp -r "$GITHUB_WORKSPACE"/pages/ slimefun

echo "Remove don't sync files"
rm slimefun/_Footer.md
rm slimefun/_Sidebar.md

echo "Setting up Authentication..."
git config user.name "EfinaBot"
git config user.email "${LOGIN_EMAIL}"

echo "Committing changes..."
git add -A
git commit -m "GitHub Action - Page Sync"

echo "Pushing to website..."
git status
# git remote add origin https://${ACCESS_TOKEN}@github.com/SlimeTraditionalTranslation/SlimeTraditionalTranslation.github.io.git
# git push origin main 
