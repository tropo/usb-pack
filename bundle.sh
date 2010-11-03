#!/bin/bash
## Bundle the directory into a zip file for upload

if [ "$1" != 'quiet' ]; then
  echo "Updating from github"
fi
git submodule --quiet update
if [ "$1" != 'quiet' ]; then
  echo "Creating zip"
fi
tar --exclude=.git --exclude=bundle.sh --exclude=install.sh -czf ../tropo-usb.tar.gz *
if [ "$1" != 'quiet' ]; then
  echo "../tropo-usb.tar.gz created" 
fi