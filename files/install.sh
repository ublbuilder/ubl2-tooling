#!/bin/sh

# Install software
apk --no-cache add libreoffice apache-ant aspell

# Create symlinks in crane folder
for t in $(ls /usr/share/crane); do
    ln -s $t /usr/share/crane/$(echo $t | sed "s:\-........\-....z$::")
done

# Delete install.sh
rm /install.sh