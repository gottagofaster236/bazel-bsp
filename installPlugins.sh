#!/bin/sh
set -e

echo "Download the plugins"
curl -s -L -o intellij-bsp.jar "https://www.dropbox.com/scl/fi/o1rriihg8i7pieuivleot/intellij-bsp.jar?rlkey=kd86ikkybyin2w01j9swf6lrm&st=xp30nwos&dl=1"
curl -s -L -o intellij-bazel.jar "https://www.dropbox.com/scl/fi/2uvribjetbztsjmg55kc5/intellij-bazel.jar?rlkey=8758j6v4b6v07p4i7fjbinrb8&st=s23gun62&dl=1"

echo "Copy plugins to IDE"
cp intellij-bsp.jar $CANVAS_IDE_HOME/../ide-plugins/
cp intellij-bazel.jar $CANVAS_IDE_HOME/../ide-plugins/

echo "Remove the downloaded jars"
rm intellij-bsp.jar
rm intellij-bazel.jar

