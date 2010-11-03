#!/bin/bash
## Bundle set up the USB drive and copy contents

function installme {
  cp -R /tmp/tropo/* /Volumes/Tropo
  diskutil quiet eject /Volumes/Tropo
  echo "** The drive has been ejected and is safe to remove. **"
  #read -p "Would you like to do another (make sure a fresh drive is inserted first)? (y/n):"
  #[ "$REPLY" == "y" ] || installme 
}

echo "Checking for updates..."
./bundle.sh quiet
echo "Installing to USB Drive..."
diskutil quiet rename /Volumes/NO\ NAME Tropo
#tar -zxf ../tropo-usb.tar.gz -C /Volumes/Tropo
mkdir /tmp/tropo
tar -zxf ../tropo-usb.tar.gz -C /tmp/tropo
installme
rm -rf /tmp/tropo