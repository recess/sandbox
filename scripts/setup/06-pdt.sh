#!/bin/bash

JAVA=`which java`
if [ "$JAVA" != "/usr/bin/java" ]; then
  yes | sudo aptitude install sun-java6-jdk
fi

PWD=`pwd`
PDT="$PWD/../../tools/pdt"
cd $TOOLS

if [ ! -d "$PDT" ]; then
  mkdir "$PDT"
fi

cd $PDT
PDT=`pwd`

if [ ! -d "eclipse" ]; then
if [ ! -f "eclipse-php-galileo-linux-gtk.tar.gz" ]; then
    wget http://mirrors.ibiblio.org/pub/mirrors/eclipse/technology/epp/downloads/release/galileo/R/eclipse-php-galileo-linux-gtk.tar.gz
fi
  tar xvfz eclipse-php-galileo-linux-gtk.tar.gz
  rm eclipse-php-galileo-linux-gtk.tar.gz
fi

if [ ! -d "$PDT/workspace" ]; then
  mkdir "$PDT/workspace"
fi

if [ ! -f "~/Desktop/PDT.desktop" ]; then
  echo "[Desktop Entry]" > ~/Desktop/PDT.desktop
  echo "Type=Application" >> ~/Desktop/PDT.desktop
  echo "Name=PDT" >> ~/Desktop/PDT.desktop
  echo "TryExec=$PDT/eclipse/eclipse" >> ~/Desktop/PDT.desktop
  echo "Exec=$PDT/eclipse/eclipse -data $PDT/workspace" >> ~/Desktop/PDT.desktop
  chmod +x ~/Desktop/PDT.desktop
fi
