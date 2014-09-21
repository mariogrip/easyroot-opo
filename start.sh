echo "Starting Easyroot for OnePlus One..."
while true; do
    read -p "Do you understand that there is an risk for bricking your OnePlus One? (Y/N) " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo ""
echo "Now you need to download and Place the UPDATE-SuperSU-vX.XX.zip on your OnePlus one. (Find the link at readme file)"
while true; do
    read -p "Did you Place the UPDATE-SuperSU-vX.XX.zip on your OnePlus one? (Y/N) " yn
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
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
bash <(curl https://raw.githubusercontent.com/corbindavenport/nexus-tools/master/install.sh)
echo "Done installing nexus tools"
echo ""
echo "Starting the root progess"
echo "Please set your OnePlus one in Fastboot mode (if you dont know how to do this, read the forum post.)"
while true; do
    read -p "Is your phone in fastboot mode? (Y/N) " y
    case $yn in
        [Yy]* ) break;;
        * ) echo "Please set your OnePlus one in Fastboot mode...";;
    esac
done
echo "Please connect your OnePlus one to your pc using a USB-Cable?"
while true; do
    read -p "is your phone in Connected? (Y/N) " y
    case $yn in
        [Yy]* ) break;;
        * ) echo "Please connect your OnePlus one";;
    esac
done
while true; do
    read -p "Are you ready to root your phone? (Y/N) " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo "Downloading recovery.img"
wget https://raw.githubusercontent.com/mariogrip/easyroot-opo/master/recovery.img
fastboot boot recovery.img
adb kill-server
echo "Starting fastboot, please wait..."
sleep "10"
echo "TWRP shuld be booted on your OnePlus now, now you need to Press Install, then you need to find and press UPDATE-SuperSU-vX.XX.zip that you placed on your OnePlus, then swipe to flash, when thats done, go back and choose reboot, then system..."
while true; do
    read -p "Have you done this step? (Y/N) " y
    case $yn in
        [Yy]* ) break;;
        * ) echo "You need to do this step in order to root your phone...";;
    esac
done
echo "you OnePlus is now rooted :)"
sleep "5"
