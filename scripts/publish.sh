tiddlywiki ../readonly --rendertiddler $:/core/save/all ../../index.html text/plain
git checkout master
cd ../
git add .
git commit -am "Saved on: `date`"
git push origin master
git checkout gh-pages
git merge master
git push origin gh-pages
git checkout master
rsync -avz index.html iani@larigot.avarts.ionio.gr:/Library/WebServer/Documents/users/iani/wikis/tw5square.html
