#!/bin/bash

if [ ! -f /Library/LaunchDaemons/com.noatime.plist ]; then
  echo "Setting noatime on /..."
  ln -s ~/.laptop/com.noatime.plist /Library/LaunchDaemons/com.noatime.plist
  chown root:wheel /Library/LaunchDaemons/com.noatime.plist
  chmod 644 /Library/LaunchDaemons/com.noatime.plist
  echo "Set noatime on /"
else
  echo "noatime already set on /."
fi
