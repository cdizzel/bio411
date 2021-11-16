#!/bin/bash
#clone the genomics environment and rename it biol411
conda create --name biol411 --clone genomics
#start the biol411 env
conda activate biol411
#ass some channels to install snp-sites
conda config --add channels conda-forge
conda config --add channels defaults
conda config --add channels r
conda config --add channels bioconda
#install
conda install snp-sites
#Make and enter exercise 2 to download restrictionfinder. It must be placed in exercise2 because it is later ran from that dir.
mkdir ~/exercise2
cd ~/exercise2
wget https://github.com/gilymerkado/restriction-finder/blob/master/restrictionfinder.py
cd ..
