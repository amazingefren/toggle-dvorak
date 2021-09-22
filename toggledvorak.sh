#!/bin/sh
current_variant=$(setxkbmap -query | grep variant)
current_layout=$(setxkbmap -query | grep layout)
current_layout_arg=${current_layout##* }


# echo ${current_layout##* }
# echo $current_layout
echo $current_layout_arg

# if variant is not set, set it
if [[ -z $current_variant ]]; then
  setxkbmap -layout $current_layout_arg -variant dvp
else
  # else set previous default layout
  setxkbmap -layout $current_layout_arg
fi
