set -e

npm run build

cd dist

git init
git add -A
git commit -m "commit"
git push -f git@github.com:HubertDudaDeveloper/Components-Dist.git master:gh-pages

cd -