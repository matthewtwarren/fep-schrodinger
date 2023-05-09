#!/bin/bash

mkdir ../All

for dir in ./*/ ; do
  cd $dir
  cp *.pdb ../../All
  cd .. 
done

mv ../All ./
