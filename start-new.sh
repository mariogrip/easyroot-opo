clear
echo "Starting Easyroot for OnePlus One..."
while true; do
    read -p "Do you understand that there is a risk for bricking your OnePlus One? (Y/N) " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo ""
echo "This will install Nexus tools (adb and fastboot)"
while true; do
    read -p "Do you wish to install Nexus tools? (Y/N) " yn
    case $yn in
        [Yy]* ) bash <(curl https://raw.githubusercontent.com/corbindavenport/nexus-tools/master/install.sh); break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo "Done installing Nexus tools"
echo ""
echo "Starting the root process"
echo "Please set your OnePlus One in Fastboot mode (if you dont know how to do this, read the forum post.)"
while true; do
    read -p "Is your phone in fastboot mode? (Y/N) " y
    case $y in
        [Yy]* ) break;;
        * ) echo "Please set your OnePlus one in Fastboot mode...";;
    esac
done
echo "Please connect your OnePlus One to your PC using a USB-Cable?"
while true; do
    read -p "Is your phone connected? (Y/N) " y
    case $y in
        [Yy]* ) break;;
        * ) echo "Please connect your OnePlus One";;
    esac
done
echo "Downloading recovery.img..."
sleep "2"
wget https://raw.githubusercontent.com/mariogrip/easyroot-opo/master/recovery.img
clear
while true; do
    read -p "This step will unlock your bootloader. NOTE! this will wipe your phone!? (Y/N) " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
fastboot oem unlock
echo ""
echo "You bootloader is now unlocked."
echo "The phone will reboot. Wait until the phone has fully booted up into Android, then adjust the following settings on the phone:"
echo "USB Debugging - On your phone go to Settings > About phone > Tap on Build number 7 times. This will enable Developer options. Now go back to Settings > Developer options > Enable USB debugging"
echo "Disable CM Recovery Protection - On your phone go to Settings > Developer options. Then disable the 'Update recovery with system updates' option."
while true; do
    read -p "Have you done this step? (Y/N) " y
    case $yn in
        [Yy]* ) break;;
        * ) echo "You need to do this step in order to root your phone...";;
    esac
done
echo ""
echo "Please set your OnePlus One in fastboot mode (if you dont know how to do this, read the forum post.)"
while true; do
    read -p "Is your phone in fastboot mode? (Y/N) " y
    case $y in
        [Yy]* ) break;;
        * ) echo "Please set your OnePlus One in Fastboot mode...";;
    esac
done
echo "Please connect your OnePlus one to your PC using a USB-Cable?"
while true; do
    read -p "Is your phone connected? (Y/N) " y
    case $y in
        [Yy]* ) break;;
        * ) echo "Please connect your OnePlus one";;
    esac
done
while true; do
    read -p "This step will flash TWRP (Y/N) " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
fastboot flash recovery recovery.img
fastboot reboot
echo "Installing, please wait..."
sleep "5"
clear
echo ""
echo "The phone will reboot. Wait until the phone has fully booted up into android then"
echo "You need to download and Place the UPDATE-SuperSU-vX.XX.zip on your OnePlus one (on the sdcard). (Find the link at readme file)"
while true; do
    read -p "Did you Place the UPDATE-SuperSU-vX.XX.zip on your OnePlus one? (Y/N) " y
    case $y in
        [Yy]* ) break;;
        * ) echo "You need to Place the UPDATE-SuperSU-vX.XX.zip on your OnePlus one in order to make this work!";;
    esac
done
echo ""
echo "After you have Placed the UPDATE-SuperSU-vX.XX.zip on your OnePlus one, turn it off. Now to enter your newly installed custom recovery, hold volume down + power. The phone should boot into recovery mode."
echo "when your are in recovery, you need to Press Install, then you need to find and press UPDATE-SuperSU-vX.XX.zip that you placed on your OnePlus, then swipe to flash, when thats done, press reboot system..."
while true; do
    read -p "Have you done this step? (Y/N) " y
    case $yn in
        [Yy]* ) break;;
        * ) echo "You need to do this step in order to root your phone...";;
    esac
done
echo "Your OnePlus is now rooted :)"
sleep "5"
