#!/bin/bash
# show rofi list of emojis and copy output to clipboard
# the database is taken from LARBS

COL1="#141022"
COL2="#bbbbbb"
COL3="#eeeeee"
COL4="#7957b9"

cat $HOME/scripts/bash/.resources/emoji.db | cut -d";" -f1 |dmenu -p "emoji: " -h 30 -fn monospace:size=14 -nb "$COL1" -nf "$COL2" -sb "$COL4" -sf "$COL3" -l 20|awk '{print $1}' | tr -d '\n' | xclip -selection clipboard
