#!/bin/sh

# Install software
apk --no-cache add libreoffice apache-ant aspell

# Rename folders in crane folder
for t in $(ls /usr/share/crane); do
    name=$(echo $t | sed "s:\-........\-....z$::")
    echo -n "$t" > /usr/share/crane/$t/.version
    mv /usr/share/crane/$t /usr/share/crane/$name
done

# Make files executable
chmod a+x /usr/bin/*

# Delete install.sh
rm /install.sh