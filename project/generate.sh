#!/usr/bin/env bash

set -e

cd project
rm -r -f project
mkdir project

cd project
cp ../README.md .
mkdir Notebooks
cp ../../notebooks/* ./Notebooks
git clone https://github.com/michalc/ParameterisedAI.git
git clone https://github.com/michalc/OpenTTDLab.git
cd ..

tar zcvf project.tgz project

rm -r -f project
mv project.tgz ..
cd ..
