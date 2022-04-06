#!/bin/bash

echo "Deleting .git folder..."
rm -rf .git

echo "Clone Website Repository..."
git clone https://github.com/SlimeTraditionalTranslation/SlimeTraditionalTranslation.github.io.git SlimeTraditionalTranslation-Web
cd SlimeTraditionalTranslation-Web || exit

echo "Replace pages"
cd docs/ || exit
rm -rf Slimefun/
cp -r ../../translate/tw Slimefun

# echo "Remove don't sync files"
# rm slimefun/_Footer.md
# rm slimefun/_Sidebar.md
# rm slimefun/missing.md

echo "Setting up Authentication..."
git config user.name "EfinaBot"
git config user.email "${LOGIN_EMAIL}"

echo "Committing changes..."
git add -A
git commit -m "ci(Sync): Auto Page Sync Action"

echo "Pushing to website..."
git remote set-url origin https://${ACCESS_TOKEN}@github.com/SlimeTraditionalTranslation/SlimeTraditionalTranslation.github.io.git
git push origin main 
