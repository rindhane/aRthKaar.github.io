#! /usr/bin/env bash
rm -r ./docs/*
rm -r ./build/*
make html
cp -r ./build/html/* ./docs/
cp ./source/.nojekyll ./docs/
git add .
git commit -m "move build/ files to docs/ for deployment"
git push 
