#!/bin/bash

# This sed madness searches all shiny-app dirs and consolidates dependencies
#  into a single install.R file
echo "install.packages(c(" > install.R
grep -rh library shiny-apps/* \
  | sed "s/^[ \t]*//" \
  | sed s/library//g \
  | sed s/\"//g \
  | sort -u \
  | sed s/\(/'"'/g \
  | sed s/\)/'",'/g \
  | sed '$s/,$//' >> install.R
echo "), dependencies=TRUE)" >> install.R

# devtools installs
echo 'library("devtools")' >> install.R
grep -rho devtools::install.* shiny-apps/* \
  | sort -u >> install.R
