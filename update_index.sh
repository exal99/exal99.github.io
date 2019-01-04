#! /usr/bin/env bash

cd ..

jupyter nbconvert --to html "src/Python/wikipedia-analysis/Wikipedia Statistics.ipynb"

mv "src/Python/wikipedia-analysis/Wikipedia Statistics.html" exal99.github.io/index.html

chmod a-x exal99.github.io/index.html

cd exal99.github.io

sed -i '
    1,5 {
        /<head>/ {
            r analytics.txt
        }
    }
' index.html

git add index.html

if [ $# -eq 1 ]; then
    git commit -m $1
    git push
elif [ $# -eq 0 ]; then
    git commit -m "Updated statistics"
    git push
fi
