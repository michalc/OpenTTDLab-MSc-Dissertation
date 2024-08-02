#!/usr/bin/env bash

set -e

function generate() {
    cd project
    rm -r -f project
    mkdir project

    cd project
    cp ../README.md .
    mkdir Notebooks
    cp ../../notebooks/* ./Notebooks
    git clone git@github.com:michalc/ParameterisedAI.git
    git clone git@github.com:michalc/OpenTTDLab.git
    cd ..

    tar zcvf project.tgz project
    md5=$(md5sum ./project.tgz | cut -d ' ' -f 1)

    rm -r -f project
    mv project.tgz ..
    cd ..
}

>&2 echo "Generating project.tgz..."
generate > /dev/null 2>&1
>&2 echo "Done"

md5=$(md5sum ./project.tgz | cut -d ' ' -f 1)
echo "${md5}"
