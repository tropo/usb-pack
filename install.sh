#!/bin/bash
## Bundle set up the USB drive and copy contents
echo "Building Bundle..."
./bundle.sh
echo "Unpacking zip to USB Drive"
diskutil quiet rename /Volumes/NO\ NAME Tropo
tar -zxf ../tropo-usb.tar.gz -C /Volumes/Tropo
diskutil quiet eject /Volumes/Tropo
echo "** DONE - The drive has been ejected and is safe to remove. **"