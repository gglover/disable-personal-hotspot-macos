# Disable personal hotspot on macOS

This is a simple Launch Agent that listens for changes in your wifi and turns off internet access if you attempt to access a personal hotspot.

When installed correctly, joining your personal hotspot network will result in Wifi being toggled off after a few seconds. You will still be able to successfully join other Wifi networks.

### Installation

1. Copy `com.local.disable-personal-hotspot.plist` to a file with the same name in `/Users/Gus/Library/LaunchAgents`
2. Copy `disable-personal-hotspot.sh` to a file with the same name in `/usr/local/sbin`
3. Open `disable-personal-hotspot.sh` and replace the `PERSONAL_HOTSPOT` name with your own. For example:

```
PERSONAL_HOTSPOT="Gus's iPhone"
```

4. Open the terminal and run the following commands:

Make the script executable.

```
chmod 755 /usr/local/sbin/disable-personal-hotspot.sh
```

Enable the launch agent (You'll need to enter your password).

```
sudo launchctl enable system/com.local.disable-personal-hotspot.plist
```

### Motivation

Currently, the personal hotspot feature can be used to sidestep content restrictions. Both macOS's "Content & Privacy" filtering setting as well as user-defined filtering via `/etc/hosts` are affected.

This is impossible to prevent without signing out of iCloud on one or both devices. Having a one-click bypass for content filters is a very annoying loophole. That has been requested numerous times but never addressed by Apple.

https://discussions.apple.com/thread/254429224  
https://discussions.apple.com/thread/253543565  
https://discussions.apple.com/thread/7650610

And many more...  
https://www.google.com/search?q=disable+personal+hotspot+macos+content+filtering+site

### Latest verified version

macOS Sonoma version 14.4
