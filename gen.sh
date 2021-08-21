#!/bin/bash

#This script is a mess, but it works
while read p
do
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

while read name
do
	textureName=$(sed 's/.\{7\}$//' <<< "$name")
	if [[ $textureName == *_tree ]];
	then
		textureName=${textureName}_planks
	fi
	if [[ $textureName == *_bone ]];
	then
		textureName=${textureName}_block
	fi
	if [[ $textureName == pythadendron ]];
	then
		textureName=pythadendron_planks
	fi
	if [[ $textureName == lacugrove ]];
	then
		textureName=lacugrove_planks
	fi
	if [[ $textureName == mossy_glowshroom ]];
	then
		textureName=mossy_glowshroom_planks
	fi
	if [[ $textureName == terminite ]];
	then
		textureName=terminite_block
	fi
	if [[ $textureName == jellyshroom ]];
	then
		textureName=jellyshroom_planks
	fi
	if [[ $textureName == tenanea ]];
	then
		textureName=tenanea_planks
	fi
	if [[ $textureName == lucernia ]];
	then
		textureName=lucernia_planks
	fi
	if [[ $textureName == thallasium ]];
	then
		textureName=thallasium_block
	fi
	printf "{\n\
  \"variants\": {\n\
    \"facing=east,half=bottom,shape=inner_left\": {\n\
      \"model\": \"betterend:block/${name}_inner\",\n\
      \"y\": 270,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=east,half=bottom,shape=inner_right\": {\n\
      \"model\": \"betterend:block/${name}_inner\"\n\
    },\n\
    \"facing=east,half=bottom,shape=outer_left\": {\n\
      \"model\": \"betterend:block/${name}_outer\",\n\
      \"y\": 270,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=east,half=bottom,shape=outer_right\": {\n\
      \"model\": \"betterend:block/${name}_outer\"\n\
    },\n\
    \"facing=east,half=bottom,shape=straight\": {\n\
      \"model\": \"betterend:block/$name\"\n\
    },\n\
    \"facing=east,half=top,shape=inner_left\": {\n\
      \"model\": \"betterend:block/${name}_inner\",\n\
      \"x\": 180,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=east,half=top,shape=inner_right\": {\n\
      \"model\": \"betterend:block/${name}_inner\",\n\
      \"x\": 180,\n\
      \"y\": 90,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=east,half=top,shape=outer_left\": {\n\
      \"model\": \"betterend:block/${name}_outer\",\n\
      \"x\": 180,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=east,half=top,shape=outer_right\": {\n\
      \"model\": \"betterend:block/${name}_outer\",\n\
      \"x\": 180,\n\
      \"y\": 90,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=east,half=top,shape=straight\": {\n\
      \"model\": \"betterend:block/$name\",\n\
      \"x\": 180,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=north,half=bottom,shape=inner_left\": {\n\
      \"model\": \"betterend:block/${name}_inner\",\n\
      \"y\": 180,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=north,half=bottom,shape=inner_right\": {\n\
      \"model\": \"betterend:block/${name}_inner\",\n\
      \"y\": 270,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=north,half=bottom,shape=outer_left\": {\n\
      \"model\": \"betterend:block/${name}_outer\",\n\
      \"y\": 180,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=north,half=bottom,shape=outer_right\": {\n\
      \"model\": \"betterend:block/${name}_outer\",\n\
      \"y\": 270,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=north,half=bottom,shape=straight\": {\n\
      \"model\": \"betterend:block/$name\",\n\
      \"y\": 270,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=north,half=top,shape=inner_left\": {\n\
      \"model\": \"betterend:block/${name}_inner\",\n\
      \"x\": 180,\n\
      \"y\": 270,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=north,half=top,shape=inner_right\": {\n\
      \"model\": \"betterend:block/${name}_inner\",\n\
      \"x\": 180,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=north,half=top,shape=outer_left\": {\n\
      \"model\": \"betterend:block/${name}_outer\",\n\
      \"x\": 180,\n\
      \"y\": 270,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=north,half=top,shape=outer_right\": {\n\
      \"model\": \"betterend:block/${name}_outer\",\n\
      \"x\": 180,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=north,half=top,shape=straight\": {\n\
      \"model\": \"betterend:block/$name\",\n\
      \"x\": 180,\n\
      \"y\": 270,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=south,half=bottom,shape=inner_left\": {\n\
      \"model\": \"betterend:block/${name}_inner\"\n\
    },\n\
    \"facing=south,half=bottom,shape=inner_right\": {\n\
      \"model\": \"betterend:block/${name}_inner\",\n\
      \"y\": 90,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=south,half=bottom,shape=outer_left\": {\n\
      \"model\": \"betterend:block/${name}_outer\"\n\
    },\n\
    \"facing=south,half=bottom,shape=outer_right\": {\n\
      \"model\": \"betterend:block/${name}_outer\",\n\
      \"y\": 90,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=south,half=bottom,shape=straight\": {\n\
      \"model\": \"betterend:block/$name\",\n\
      \"y\": 90,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=south,half=top,shape=inner_left\": {\n\
      \"model\": \"betterend:block/${name}_inner\",\n\
      \"x\": 180,\n\
      \"y\": 90,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=south,half=top,shape=inner_right\": {\n\
      \"model\": \"betterend:block/${name}_inner\",\n\
      \"x\": 180,\n\
      \"y\": 180,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=south,half=top,shape=outer_left\": {\n\
      \"model\": \"betterend:block/${name}_outer\",\n\
      \"x\": 180,\n\
      \"y\": 90,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=south,half=top,shape=outer_right\": {\n\
      \"model\": \"betterend:block/${name}_outer\",\n\
      \"x\": 180,\n\
      \"y\": 180,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=south,half=top,shape=straight\": {\n\
      \"model\": \"betterend:block/$name\",\n\
      \"x\": 180,\n\
      \"y\": 90,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=west,half=bottom,shape=inner_left\": {\n\
      \"model\": \"betterend:block/${name}_inner\",\n\
      \"y\": 90,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=west,half=bottom,shape=inner_right\": {\n\
      \"model\": \"betterend:block/${name}_inner\",\n\
      \"y\": 180,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=west,half=bottom,shape=outer_left\": {\n\
      \"model\": \"betterend:block/${name}_outer\",\n\
      \"y\": 90,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=west,half=bottom,shape=outer_right\": {\n\
      \"model\": \"betterend:block/${name}_outer\",\n\
      \"y\": 180,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=west,half=bottom,shape=straight\": {\n\
      \"model\": \"betterend:block/$name\",\n\
      \"y\": 180,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=west,half=top,shape=inner_left\": {\n\
      \"model\": \"betterend:block/${name}_inner\",\n\
      \"x\": 180,\n\
      \"y\": 180,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=west,half=top,shape=inner_right\": {\n\
      \"model\": \"betterend:block/${name}_inner\",\n\
      \"x\": 180,\n\
      \"y\": 270,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=west,half=top,shape=outer_left\": {\n\
      \"model\": \"betterend:block/${name}_outer\",\n\
      \"x\": 180,\n\
      \"y\": 180,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=west,half=top,shape=outer_right\": {\n\
      \"model\": \"betterend:block/${name}_outer\",\n\
      \"x\": 180,\n\
      \"y\": 270,\n\
      \"uvlock\": true\n\
    },\n\
    \"facing=west,half=top,shape=straight\": {\n\
      \"model\": \"betterend:block/$name\",\n\
      \"x\": 180,\n\
      \"y\": 180,\n\
      \"uvlock\": true\n\
    }\n\
  }\n\
}" > ResourcePack/assets/betterend/blockstates/$name.json
	printf "{\n\
  \"parent\": \"minecraft:block/stairs\",\n\
  \"textures\": {\n\
    \"bottom\": \"betterend:block/$textureName\",\n\
    \"top\": \"betterend:block/$textureName\",\n\
    \"side\": \"betterend:block/$textureName\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/$name.json
	printf "{\n\
  \"parent\": \"minecraft:block/outer_stairs\",\n\
  \"textures\": {\n\
    \"bottom\": \"betterend:block/$textureName\",\n\
    \"top\": \"betterend:block/$textureName\",\n\
    \"side\": \"betterend:block/$textureName\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/${name}_outer.json

	printf "{\n\
  \"parent\": \"minecraft:block/inner_stairs\",\n\
  \"textures\": {\n\
    \"bottom\": \"betterend:block/$textureName\",\n\
    \"top\": \"betterend:block/$textureName\",\n\
    \"side\": \"betterend:block/$textureName\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/${name}_inner.json
done <./ItemLists/Stairs.txt

while read name
do
	textureName=$(sed 's/.\{5\}$//' <<< "$name")
	blockName=$textureName
	printf "{\n\
  \"parent\": \"minecraft:block/slab\",\n\
  \"textures\": {\n\
    \"bottom\": \"betterend:block/$textureName\",\n\
    \"top\": \"betterend:block/$textureName\",\n\
    \"side\": \"betterend:block/$textureName\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/$name.json
	printf "{\n\
  \"parent\": \"minecraft:block/slab_top\",\n\
  \"textures\": {\n\
    \"bottom\": \"betterend:block/$textureName\",\n\
    \"top\": \"betterend:block/$textureName\",\n\
    \"side\": \"betterend:block/$textureName\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/${name}_top.json
	printf "{\n\
  \"variants\": {\n\
    \"type=bottom\": {\n\
      \"model\": \"betterend:block/${name}\"\n\
    },\n\
    \"type=double\": {\n\
      \"model\": \"minecraft:block/${blockName}\"\n\
    },\n\
    \"type=top\": {\n\
      \"model\": \"betterend:block/${name}_top\"\n\
    }\n\
  }\n\
}" > ResourcePack/assets/betterend/blockstates/$name.json
done <./ItemLists/Slabs.txt