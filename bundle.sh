#!/bin/bash
## Bundle the directory into a zip file for upload
echo "Updating from github"
git submodule --quiet update
echo "Creating zip"
tar --exclude=.git --exclude=bundle.sh -czf ../tropo-usb.tar.gz *
echo "../tropo-usb.tar.gz created" 