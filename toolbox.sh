#!/bin/bash

#Simple Terminal Toolbox Menu
while true; do
clear
echo" Terminal Toolbox"
echo "==================="
echo " 1. Install All Tools"
echo " 2. Launch figlet"
echo " 3. Launch cowsay"
echo " 4. Run sl (Stream Locomotive)"
echo " 5. Get a random fortune"
echo " 6. Exit"
echo " ====================="
read -p "Enter your choice: " choice

case $choice in
1)
  sudo apt update 
sudo apt install figlet cowsay sl fortune -y
echo " Tools installed!"
read -p "Press enter to continue..."
;;
2)
read -p "Enter your text: " text
figlet "$text"
read -p "Press enter to continue..."
;;
3)
read -p "What should the cow say?" moo
cowsay "$moo"
read -p "Press enter to continue..."
;;
4)
sl
read -p "Press enter to continue..."
;;
  5)
    fortune
    read -p "Press enter to continue..."
    ;;

  6)
    echo "👋 Goodbye, $USER!"
    break
    ;;

  *)
    echo "❌ Invalid option. Try again."
    read -p "Press enter to continue..."
    ;;
esac
done
