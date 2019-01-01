#! /usr/bin/env bash

cd ..

cp src/Python/wikipedia-analysis/Wikipedia\ Statistics.ipynb exal99.github.io/statistics.ipynb

cd exal99.github.io

jupyter nbconvert --to html statistics.ipynb

mv statistics.html index.html

rm statistics.ipynb

git add index.html

git commit -m "Updated statistics"

git push
