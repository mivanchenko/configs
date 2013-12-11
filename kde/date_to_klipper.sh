#!/bin/sh

# Right-click Main Menu button
# Edit Applications
# New Item
# date_to_klipper
# Command
# Untick "Enable launch feedback"
# Advanced
# Current shortcut key
# Save

CLIPTEXT=`date '+%F'`
qdbus org.kde.klipper /klipper setClipboardContents $CLIPTEXT
