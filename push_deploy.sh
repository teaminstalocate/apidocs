#!/bin/bash

echo "git add ." 
git add .

echo "commit -a -m Update index.md" 
git commit -a -m "Update index.md"

echo "git push" 
git push

echo "./deploy.sh" 
./deploy.sh
