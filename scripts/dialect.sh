#!/bin/bash
text=$(xclip -o -selection clipboard) 
dialect -t "$text" &
