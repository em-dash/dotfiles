#!/bin/sh


for dotf in $(dirname $(realpath $0))/home/*
do
    ln -s $dotf $HOME/\.$(basename $dotf)
done

lesskeys


