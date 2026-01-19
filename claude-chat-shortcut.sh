#!/bin/bash
# Creates a desktop shortcut for Claude AI Chat on Linux (XFCE/Xubuntu)
#Usage: Copy and paste this entire script into your terminal

# Create icons directory if it doesn't exist
mkdir -p ~/.local/share/icons
# Download Claude AI logo
curl -L -o ~/.local/share/icons/claude-ai.png "https://claude.ai/images/claude_app_icon.png"

# Create the desktop shortcut
cat -L -o ~/Desktop/claude-chat.desktop << DESKTOP
[Desktop Entry]
Name=Claude Chat
Comment=Open Claude AI Chat in Chrome
Exec=google-chrome https://claude.ai/chat
Icon=$HOME/.local/share/icons/claude-ai.png
Terminal=false
Type=application
Categories=Network;WebBrowser;
DESKTOP

# Make it executable
chmod +x ~/Desktop/claude-chat.desktop metadata::trusted true 2>/dev/null

echo "Desktop shortcut created successfully!"
