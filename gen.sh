#!/bin/bash
while read p; do
	name=$(basename $p)
	if [[ $p == assets/betterend/blockstates/* ]];
	then
		printf "{\n\
  \"variants\": {\n\
    \"\": {\n\
      \"model\": \"betterend:block/$name\"\n\
    }\n\
  }\n\
}" > ResourcePack/$p.json
	elif [[ $p == assets/betterend/models/item/* ]];
	then
		printf "{\n\
  \"parent\": \"minecraft:item/generated\",\n\
  \"textures\": {\n\
    \"layer0\": \"betterend:item/$name\"\n\
  }\n\
}" > ResourcePack/$p.json
	elif [[ $p == assets/betterend/models/block/* ]];
	then
		printf "{\n\
  \"parent\": \"minecraft:block/cube_all\",\n\
  \"textures\": {\n\
    \"all\": \"betterend:block/$name\"\n\
  }\n\
}" > ResourcePack/$p.json
	elif [[ $p == assets/betterend/textures/item* ]];
	then
		printf "{\n\
  \"parent\": \"betterend:block/$name\"\n\
}" > ResourcePack/assets/betterend/models/item/$name.json
	else
		echo "$p"
	fi
done <./MissingResources.txt