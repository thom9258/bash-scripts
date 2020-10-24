#!/bin/bash

[ $(echo -e "Yes!\nNooo" | dmenu -i -p "Are you a cat?") == "Yes!" ] && echo "owo meow" || echo "aww sad :("
