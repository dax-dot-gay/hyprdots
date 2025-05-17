#! /bin/bash

killall waybar

# {% waybar::launchers(waybar::bars) %}
waybar -c ~/.config/waybar/bars/primary.jsonc
# {% end %}