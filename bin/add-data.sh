#!/bin/bash
for var in "${@:2}"
do
echo Adding "$var"
lc=${var,,}
mkdir "$var"
cd "$var" || exit;
echo -e "$var\n===\n\n$1" > README.md
echo -e "{\n  id: '$lc',\n  name: '$var',\n  type: '$1'\n}" > data.json
cd ..
done
