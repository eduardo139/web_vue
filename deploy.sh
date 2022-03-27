#!/usr/bin/env sh
# abort on errors

set -e

# build
npm run build

cd dist

git init
git add -A
git commit -m "Deploy"

git push-f git@github.com:eduardo139/web_vue.git master:gh-pages

cd -