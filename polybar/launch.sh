#!/usr/bin/env sh

pkill polybar && sleep 1
polybar --reload --quiet top -c ~/.config/polybar/config.ini &
polybar --reload --quiet bottom -c ~/.config/polybar/config.ini &
