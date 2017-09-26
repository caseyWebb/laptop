#!/bin/bash

echo "Linking VS Code settings..."
rm ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/.laptop/vscode.settings.json ~/Library/Application\ Support/Code/User/settings.json
echo "Done."