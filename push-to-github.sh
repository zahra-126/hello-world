#!/bin/bash
# Usage: ./push-to-github.sh https://github.com/YOUR-USERNAME/hello-world.git
set -e
if [ -z "$1" ]; then echo "Usage: $0 <github-repo-url>"; exit 1; fi
git init
git add .
git commit -m "Initial Hello World"
git branch -M main
git branch development
git branch staging
git remote add origin "$1"
git push -u origin main development staging
