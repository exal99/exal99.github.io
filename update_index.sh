#! /usr/bin/env bash

cd ..

jupyter nbconvert --to html "src/Python/wikipedia-analysis/Wikipedia Statistics.ipynb"

mv "src/Python/wikipedia-analysis/Wikipedia Statistics.html" exal99.github.io/index.html

chmod a-x exal99.github.io/index.html

cd exal99.github.io

git add index.html
