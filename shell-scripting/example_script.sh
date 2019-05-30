#!/bin/bash

replaceInFile() {
  sed -i'' .bak "s/$2/$3/g" $1
  find . -name '*.bak' | xargs rm
}

replaceInFile ../text.txt cat dog
