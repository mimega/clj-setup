#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y curl

echo "=============== Clojure stuff begin =================="

LEIN_PATH="https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein"
USER_HOME="/home/ubuntu"

echo "=== Installing JDK8 ==="
sudo apt-get install -y openjdk-8-jdk

echo "=== Installing Leiningen ==="
mkdir $USER_HOME/bin
curl $LEIN_PATH > $USER_HOME/bin/lein
chmod +x $USER_HOME/bin/lein
# export PATH="$PATH:/vagrant/bin/"
echo 'export PATH="/vagrant/bin:$PATH"' | cat - $USER_HOME/.bashrc > temp && mv temp $USER_HOME/.bashrc

lein version
echo "=== Installed `lein version` ==="

echo "=============== Clojure stuff end =================="
