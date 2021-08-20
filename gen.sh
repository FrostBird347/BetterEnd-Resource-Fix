#!/bin/bash
while read p; do
	name=$(basename $p)
	if [[ $p == assets/betterend/blockstates/* ]];
	then
		printf "{\n\
  \"variants\": {\
    \"\": {\
      \"model\": \"betterend:block/$name\"\
    }\
  }\
}" > ResourcePack/$p.json
	elif [[ $p == assets/betterend/models/item/* ]];
	then
		printf "{\n\
  \"parent\": \"minecraft:item/generated\",\n\
  \"textures\": {\n\
    \"layer0\": \"betterend:item/$name\"\n\
  }\n\
}" > ResourcePack/$p.json
	else
		echo "$p"
	fi
done <./MissingResources.txt