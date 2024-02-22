#!/bin/bash

# This script is used to sync the Fink source code to the fink server

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

USER="fedora"
SERVER="157.136.249.230"

for dir in "k8s-school" "astrolabsoftware"; do
    rsync -avzP --delete --exclude-from="$DIR/rsync-exclude.txt" "$HOME/src/$dir" $USER@$SERVER:~/src/
done
