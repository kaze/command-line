#! /usr/bin/bash


# take: elkészíti a paraméterként megadott könyvtárat és belép abba 
# --------------------------------------------------------------------------- #
function take {
    mkdir -p $1 && cd $1
}
