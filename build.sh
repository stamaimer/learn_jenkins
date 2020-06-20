#!/bin/bash

ROOT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
SO_PATH=$ROOT_PATH/build_so

mkdir -p $SO_PATH

g++ -Wall main.cpp -o main

cp main $SO_PATH