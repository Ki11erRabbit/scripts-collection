#!/bin/bash

kitty +kitten themes Astolfo &
lookandfeeltool --apply Astolfo &

cp ~/scripts/Astolfo/settings.ini ~/.config/gtk-3.0/ &

sed 's/ctermbg=DarkGrey/ctrembg=LightGrey/' ~/.vimrc &
