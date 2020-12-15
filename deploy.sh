#! /usr/bin/env bash
cp -r ./build/html ./docs/
git add .
git commit -m "move build/ files to docs/ for deployment"
git push 
