#!/bin/bash

list=$(ls -d ../data/*/)

n_cpus=10

nohtm(){
    dir=${1}

    recname=$(ls ${dir}*protein.pdb)
    recname_nohetatm="${recname%.pdb}-nhm.pdb"
    #echo ${recname} ${recname_nohetatm}

    grep -v "HETATM" ${recname} > ${recname_nohetatm}
}

export -f nohtm

parallel -j ${n_cpus} nohtm ::: ${list}
