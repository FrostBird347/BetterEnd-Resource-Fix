#!/bin/bash
while read p; do
	if [[ $p == assets/betterend/blockstates/* ]];
	then
		echo ""
	elif [[ $p == assets/betterend/models/item/* ]];
	then
		name=$(basename $p)
		printf "{\n\
  \"parent\": \"minecraft:item/generated\",\n\
  \"textures\": {\n\
    \"layer0\": \"betterend:item/$name\"\n\
  }\n\
}" > BE_ResourceFix/$p.json
	else
		echo "$p"
	fi
done <../MissingResources.txt