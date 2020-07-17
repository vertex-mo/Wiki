#!/usr/bin/env bash
# Push HTML files to gh-pages automatically.

# Fill this out with the correct org/repo
ORG=Vertex
REPO=VertexMO Team
# This probably should match an email for one of your users.
EMAIL=sirius.caffrey@gmail.com

set -e

git rev-parse --short HEAD | xargs -I % sed -i "s/githash: ''/githash: '%'/g" mkdocs.yml
sed -i "s/name: 'material'/name: null\n  custom_dir: 'mkdocs-material\/material'\n  static_templates:\n    - 404.html/g" mkdocs.yml
#Will NOT Use Mathjax for Deploy
sed -i "s/- 'https:\/\/cdnjs.loli.net\/ajax\/libs\/mathjax\/2.7.5\/MathJax.js?config=TeX-MML-AM_CHTML'//g" mkdocs.yml