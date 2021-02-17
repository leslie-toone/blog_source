#!/bin/bash

# This script sets up the blog development environment

if [[ ! -d .git ]]; then
    git init
    git remote add origin git@github.com:leslie-toone/blog_source.git
fi



if [[ ! -d pelican-plugins ]]; then
    git clone --recursive https://github.com/getpelican/pelican-plugins.git pelican-plugins
fi

if [[ ! -d pelican-themes ]]; then
    git clone --recursive https://github.com/getpelican/pelican-themes.git pelican-themes
fi

if [[ ! -d deploy ]]; then
    mkdir deploy
    cd deploy
    git init
    git remote add origin git@github.com:leslie-toone/leslie-toone.github.io.git
fi

