#!/usr/bin/env bash
# appify

APPNAME=${2:-$(basename "$1" ".sh")}
DIR="$APPNAME.app/Contents/MacOS"

if [ -a "$APPNAME.app" ]; then
  echo "$PWD/$APPNAME.app already exists :("
  exit 1
fi

mkdir -p "$DIR"
cp "$1" "$DIR/$APPNAME"
chmod +x "$DIR/$APPNAME"

echo "$PWD/$APPNAME.app"

# from https://mathiasbynens.be/notes/shell-script-mac-apps

# Adding a custom app icon

# 1 Create an .icns file or a 512×512 PNG image with the icon you want, and copy 
#   it to the clipboard (⌘ + C). (Alternatively, copy it from an existing app 
#   as described in steps 2 and 3.)
# 2 Right-click the .app file of which you want to change the icon and select 
#   “Get Info” (or select the file and press ⌘ + I).
# 3 Select the app icon in the top left corner by clicking it once. It will get 
#   a subtle blue outline if you did it right.
# 4 Now hit ⌘ + V (paste) to overwrite the default icon with the new one.

# Note that this will work for any file or folder, not just .app files.