#!/bin/bash

#This script is a mess, but it works
mkdir  ResourcePack
mkdir  ResourcePack/assets
mkdir  ResourcePack/assets/betterend
mkdir  ResourcePack/assets/betterend/blockstates
mkdir  ResourcePack/assets/betterend/models
mkdir  ResourcePack/assets/betterend/models/block
mkdir  ResourcePack/assets/betterend/models/item

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
		if [[ $name == *leaves* ]];
		then
			printf "{\n\
  \"parent\": \"minecraft:block/leaves\",\n\
  \"textures\": {\n\
    \"all\": \"betterend:block/$name\"\n\
  }\n\
}" > ResourcePack/$p.json
		else
			printf "{\n\
  \"parent\": \"minecraft:block/cube_all\",\n\
  \"textures\": {\n\
    \"all\": \"betterend:block/$name\"\n\
  }\n\
}" > ResourcePack/$p.json
		fi
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
		textureName=terminite_tile
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
		textureName=thallasium_tile
	fi
	if [[ $textureName == end_lotus ]];
	then
		textureName=end_lotus_planks
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
		textureName=terminite_tile
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
		textureName=thallasium_tile
	fi
	if [[ $textureName == end_lotus ]];
	then
		textureName=end_lotus_planks
	fi
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

while read name
do
	printf "{\n\
  \"variants\": {\n\
    \"axis=x\": {\n\
      \"model\": \"betterend:block/${name}_horizontal\",\n\
      \"x\": 90,\n\
      \"y\": 90\n\
    },\n\
    \"axis=y\": {\n\
      \"model\": \"betterend:block/${name}\"\n\
    },\n\
    \"axis=z\": {\n\
      \"model\": \"betterend:block/${name}_horizontal\",\n\
      \"x\": 90\n\
    }\n\
  }\n\
}" > ResourcePack/assets/betterend/blockstates/${name}.json
	printf "{\n\
  \"parent\": \"minecraft:block/cube_column\",\n\
  \"textures\": {\n\
    \"end\": \"betterend:block/${name}_top\",\n\
    \"side\": \"betterend:block/${name}_side\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/${name}.json
	printf "{\n\
  \"parent\": \"minecraft:block/cube_column_horizontal\",\n\
  \"textures\": {\n\
    \"end\": \"betterend:block/${name}_top\",\n\
    \"side\": \"betterend:block/${name}_side\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/${name}_horizontal.json
done <./ItemLists/Logs.txt

while read name
do
	textureName=$(sed 's/.\{6\}$//' <<< "$name")
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
		textureName=terminite_tile
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
		textureName=thallasium_tile
	fi
	if [[ $textureName == end_lotus ]];
	then
		textureName=end_lotus_planks
	fi
	blockName=$textureName
	printf "{\n\
  \"parent\": \"minecraft:block/pressure_plate_up\",\n\
  \"textures\": {\n\
    \"texture\": \"betterend:block/$textureName\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/$name.json
	printf "{\n\
  \"parent\": \"minecraft:block/pressure_plate_down\",\n\
  \"textures\": {\n\
    \"texture\": \"betterend:block/$textureName\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/${name}_down.json
	printf "{\n\
  \"variants\": {\n\
    \"powered=false\": {\n\
      \"model\": \"betterend:block/${name}\"\n\
    },\n\
    \"powered=true\": {\n\
      \"model\": \"betterend:block/${name}_down\"\n\
    }\n\
  }\n\
}" > ResourcePack/assets/betterend/blockstates/$name.json
done <./ItemLists/Plates.txt

while read name
do
	rm ResourcePack/assets/betterend/models/block/${name}.json
	printf "{\n\
  \"variants\": {\n\
    \"facing=east,half=bottom,open=false\": {\n\
      \"model\": \"betterend:block/${name}_bottom\"\n\
    },\n\
    \"facing=east,half=bottom,open=true\": {\n\
      \"model\": \"betterend:block/${name}_open\",\n\
      \"y\": 90\n\
    },\n\
    \"facing=east,half=top,open=false\": {\n\
      \"model\": \"betterend:block/${name}_top\"\n\
    },\n\
    \"facing=east,half=top,open=true\": {\n\
      \"model\": \"betterend:block/${name}_open\",\n\
      \"y\": 90\n\
    },\n\
    \"facing=north,half=bottom,open=false\": {\n\
      \"model\": \"betterend:block/${name}_bottom\"\n\
    },\n\
    \"facing=north,half=bottom,open=true\": {\n\
      \"model\": \"betterend:block/${name}_open\"\n\
    },\n\
    \"facing=north,half=top,open=false\": {\n\
      \"model\": \"betterend:block/${name}_top\"\n\
    },\n\
    \"facing=north,half=top,open=true\": {\n\
      \"model\": \"betterend:block/${name}_open\"\n\
    },\n\
    \"facing=south,half=bottom,open=false\": {\n\
      \"model\": \"betterend:block/${name}_bottom\"\n\
    },\n\
    \"facing=south,half=bottom,open=true\": {\n\
      \"model\": \"betterend:block/${name}_open\",\n\
      \"y\": 180\n\
    },\n\
    \"facing=south,half=top,open=false\": {\n\
      \"model\": \"betterend:block/${name}_top\"\n\
    },\n\
    \"facing=south,half=top,open=true\": {\n\
      \"model\": \"betterend:block/${name}_open\",\n\
      \"y\": 180\n\
    },\n\
    \"facing=west,half=bottom,open=false\": {\n\
      \"model\": \"betterend:block/${name}_bottom\"\n\
    },\n\
    \"facing=west,half=bottom,open=true\": {\n\
      \"model\": \"betterend:block/${name}_open\",\n\
      \"y\": 270\n\
    },\n\
    \"facing=west,half=top,open=false\": {\n\
      \"model\": \"betterend:block/${name}_top\"\n\
    },\n\
    \"facing=west,half=top,open=true\": {\n\
      \"model\": \"betterend:block/${name}_open\",\n\
      \"y\": 270\n\
    }\n\
  }\n\
}" > ResourcePack/assets/betterend/blockstates/${name}.json
	printf "{\n\
  \"parent\": \"minecraft:block/template_trapdoor_bottom\",\n\
  \"textures\": {\n\
    \"texture\": \"betterend:block/${name}\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/${name}_bottom.json
	printf "{\n\
  \"parent\": \"minecraft:block/template_trapdoor_top\",\n\
  \"textures\": {\n\
    \"texture\": \"betterend:block/${name}\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/${name}_top.json
	printf "{\n\
  \"parent\": \"minecraft:block/template_trapdoor_open\",\n\
  \"textures\": {\n\
    \"texture\": \"betterend:block/${name}\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/${name}_open.json
	printf "{\n\
  \"parent\": \"betterend:block/${name}_bottom\"\n\
}" > ResourcePack/assets/betterend/models/item/${name}.json
done <./ItemLists/Trapdoors.txt

while read name
do
	printf "{\n\
  \"variants\": {\n\
    \"facing=east,half=lower,hinge=left,open=false\": {\n\
      \"model\": \"betterend:block/${name}_bottom\"\n\
    },\n\
    \"facing=east,half=lower,hinge=left,open=true\": {\n\
      \"model\": \"betterend:block/${name}_bottom_hinge\",\n\
      \"y\": 90\n\
    },\n\
    \"facing=east,half=lower,hinge=right,open=false\": {\n\
      \"model\": \"betterend:block/${name}_bottom_hinge\"\n\
    },\n\
    \"facing=east,half=lower,hinge=right,open=true\": {\n\
      \"model\": \"betterend:block/${name}_bottom\",\n\
      \"y\": 270\n\
    },\n\
    \"facing=east,half=upper,hinge=left,open=false\": {\n\
      \"model\": \"betterend:block/${name}_top\"\n\
    },\n\
    \"facing=east,half=upper,hinge=left,open=true\": {\n\
      \"model\": \"betterend:block/${name}_top_hinge\",\n\
      \"y\": 90\n\
    },\n\
    \"facing=east,half=upper,hinge=right,open=false\": {\n\
      \"model\": \"betterend:block/${name}_top_hinge\"\n\
    },\n\
    \"facing=east,half=upper,hinge=right,open=true\": {\n\
      \"model\": \"betterend:block/${name}_top\",\n\
      \"y\": 270\n\
    },\n\
    \"facing=north,half=lower,hinge=left,open=false\": {\n\
      \"model\": \"betterend:block/${name}_bottom\",\n\
      \"y\": 270\n\
    },\n\
    \"facing=north,half=lower,hinge=left,open=true\": {\n\
      \"model\": \"betterend:block/${name}_bottom_hinge\"\n\
    },\n\
    \"facing=north,half=lower,hinge=right,open=false\": {\n\
      \"model\": \"betterend:block/${name}_bottom_hinge\",\n\
      \"y\": 270\n\
    },\n\
    \"facing=north,half=lower,hinge=right,open=true\": {\n\
      \"model\": \"betterend:block/${name}_bottom\",\n\
      \"y\": 180\n\
    },\n\
    \"facing=north,half=upper,hinge=left,open=false\": {\n\
      \"model\": \"betterend:block/${name}_top\",\n\
      \"y\": 270\n\
    },\n\
    \"facing=north,half=upper,hinge=left,open=true\": {\n\
      \"model\": \"betterend:block/${name}_top_hinge\"\n\
    },\n\
    \"facing=north,half=upper,hinge=right,open=false\": {\n\
      \"model\": \"betterend:block/${name}_top_hinge\",\n\
      \"y\": 270\n\
    },\n\
    \"facing=north,half=upper,hinge=right,open=true\": {\n\
      \"model\": \"betterend:block/${name}_top\",\n\
      \"y\": 180\n\
    },\n\
    \"facing=south,half=lower,hinge=left,open=false\": {\n\
      \"model\": \"betterend:block/${name}_bottom\",\n\
      \"y\": 90\n\
    },\n\
    \"facing=south,half=lower,hinge=left,open=true\": {\n\
      \"model\": \"betterend:block/${name}_bottom_hinge\",\n\
      \"y\": 180\n\
    },\n\
    \"facing=south,half=lower,hinge=right,open=false\": {\n\
      \"model\": \"betterend:block/${name}_bottom_hinge\",\n\
      \"y\": 90\n\
    },\n\
    \"facing=south,half=lower,hinge=right,open=true\": {\n\
      \"model\": \"betterend:block/${name}_bottom\"\n\
    },\n\
    \"facing=south,half=upper,hinge=left,open=false\": {\n\
      \"model\": \"betterend:block/${name}_top\",\n\
      \"y\": 90\n\
    },\n\
    \"facing=south,half=upper,hinge=left,open=true\": {\n\
      \"model\": \"betterend:block/${name}_top_hinge\",\n\
      \"y\": 180\n\
    },\n\
    \"facing=south,half=upper,hinge=right,open=false\": {\n\
      \"model\": \"betterend:block/${name}_top_hinge\",\n\
      \"y\": 90\n\
    },\n\
    \"facing=south,half=upper,hinge=right,open=true\": {\n\
      \"model\": \"betterend:block/${name}_top\"\n\
    },\n\
    \"facing=west,half=lower,hinge=left,open=false\": {\n\
      \"model\": \"betterend:block/${name}_bottom\",\n\
      \"y\": 180\n\
    },\n\
    \"facing=west,half=lower,hinge=left,open=true\": {\n\
      \"model\": \"betterend:block/${name}_bottom_hinge\",\n\
      \"y\": 270\n\
    },\n\
    \"facing=west,half=lower,hinge=right,open=false\": {\n\
      \"model\": \"betterend:block/${name}_bottom_hinge\",\n\
      \"y\": 180\n\
    },\n\
    \"facing=west,half=lower,hinge=right,open=true\": {\n\
      \"model\": \"betterend:block/${name}_bottom\",\n\
      \"y\": 90\n\
    },\n\
    \"facing=west,half=upper,hinge=left,open=false\": {\n\
      \"model\": \"betterend:block/${name}_top\",\n\
      \"y\": 180\n\
    },\n\
    \"facing=west,half=upper,hinge=left,open=true\": {\n\
      \"model\": \"betterend:block/${name}_top_hinge\",\n\
      \"y\": 270\n\
    },\n\
    \"facing=west,half=upper,hinge=right,open=false\": {\n\
      \"model\": \"betterend:block/${name}_top_hinge\",\n\
      \"y\": 180\n\
    },\n\
    \"facing=west,half=upper,hinge=right,open=true\": {\n\
      \"model\": \"betterend:block/${name}_top\",\n\
      \"y\": 90\n\
    }\n\
  }\n\
}" > ResourcePack/assets/betterend/blockstates/${name}.json
	printf "{\n\
  \"parent\": \"minecraft:block/door_top\",\n\
  \"textures\": {\n\
    \"top\": \"betterend:block/${name}_top\",\n\
    \"bottom\": \"betterend:block/${name}_bottom\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/${name}_top.json
	printf "{\n\
  \"parent\": \"minecraft:block/door_top_rh\",\n\
  \"textures\": {\n\
    \"top\": \"betterend:block/${name}_top\",\n\
    \"bottom\": \"betterend:block/${name}_bottom\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/${name}_top_hinge.json
	printf "{\n\
  \"parent\": \"minecraft:block/door_bottom\",\n\
  \"textures\": {\n\
    \"top\": \"betterend:block/${name}_top\",\n\
    \"bottom\": \"betterend:block/${name}_bottom\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/${name}_bottom.json
	printf "{\n\
  \"parent\": \"minecraft:block/door_bottom_rh\",\n\
  \"textures\": {\n\
    \"top\": \"betterend:block/${name}_top\",\n\
    \"bottom\": \"betterend:block/${name}_bottom\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/${name}_bottom_hinge.json
done <./ItemLists/Doors.txt

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
		textureName=terminite_tile
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
		textureName=thallasium_tile
	fi
	if [[ $textureName == end_lotus ]];
	then
		textureName=end_lotus_planks
	fi
	printf "{\n\
  \"variants\": {\n\
    \"face=ceiling,facing=east,powered=false\": {\n\
      \"model\": \"betterend:block/${name}\",\n\
      \"y\": 270,\n\
      \"x\": 180\n\
    },\n\
    \"face=ceiling,facing=east,powered=true\": {\n\
      \"model\": \"betterend:block/${name}_pressed\",\n\
      \"y\": 270,\n\
      \"x\": 180\n\
    },\n\
    \"face=ceiling,facing=north,powered=false\": {\n\
      \"model\": \"betterend:block/${name}\",\n\
      \"y\": 180,\n\
      \"x\": 180\n\
    },\n\
    \"face=ceiling,facing=north,powered=true\": {\n\
      \"model\": \"betterend:block/${name}_pressed\",\n\
      \"y\": 180,\n\
      \"x\": 180\n\
    },\n\
    \"face=ceiling,facing=south,powered=false\": {\n\
      \"model\": \"betterend:block/${name}\",\n\
      \"x\": 180\n\
    },\n\
    \"face=ceiling,facing=south,powered=true\": {\n\
      \"model\": \"betterend:block/${name}_pressed\",\n\
      \"x\": 180\n\
    },\n\
    \"face=ceiling,facing=west,powered=false\": {\n\
      \"model\": \"betterend:block/${name}\",\n\
      \"y\": 90,\n\
      \"x\": 180\n\
    },\n\
    \"face=ceiling,facing=west,powered=true\": {\n\
      \"model\": \"betterend:block/${name}_pressed\",\n\
      \"y\": 90,\n\
      \"x\": 180\n\
    },\n\
    \"face=floor,facing=east,powered=false\": {\n\
      \"model\": \"betterend:block/${name}\",\n\
      \"y\": 90\n\
    },\n\
    \"face=floor,facing=east,powered=true\": {\n\
      \"model\": \"betterend:block/${name}_pressed\",\n\
      \"y\": 90\n\
    },\n\
    \"face=floor,facing=north,powered=false\": {\n\
      \"model\": \"betterend:block/${name}\"\n\
    },\n\
    \"face=floor,facing=north,powered=true\": {\n\
      \"model\": \"betterend:block/${name}_pressed\"\n\
    },\n\
    \"face=floor,facing=south,powered=false\": {\n\
      \"model\": \"betterend:block/${name}\",\n\
      \"y\": 180\n\
    },\n\
    \"face=floor,facing=south,powered=true\": {\n\
      \"model\": \"betterend:block/${name}_pressed\",\n\
      \"y\": 180\n\
    },\n\
    \"face=floor,facing=west,powered=false\": {\n\
      \"model\": \"betterend:block/${name}\",\n\
      \"y\": 270\n\
    },\n\
    \"face=floor,facing=west,powered=true\": {\n\
      \"model\": \"betterend:block/${name}_pressed\",\n\
      \"y\": 270\n\
    },\n\
    \"face=wall,facing=east,powered=false\": {\n\
      \"model\": \"betterend:block/${name}\",\n\
      \"y\": 90,\n\
      \"x\": 90,\n\
      \"uvlock\": true\n\
    },\n\
    \"face=wall,facing=east,powered=true\": {\n\
      \"model\": \"betterend:block/${name}_pressed\",\n\
      \"y\": 90,\n\
      \"x\": 90,\n\
      \"uvlock\": true\n\
    },\n\
    \"face=wall,facing=north,powered=false\": {\n\
      \"model\": \"betterend:block/${name}\",\n\
      \"x\": 90,\n\
      \"uvlock\": true\n\
    },\n\
    \"face=wall,facing=north,powered=true\": {\n\
      \"model\": \"betterend:block/${name}_pressed\",\n\
      \"x\": 90,\n\
      \"uvlock\": true\n\
    },\n\
    \"face=wall,facing=south,powered=false\": {\n\
      \"model\": \"betterend:block/${name}\",\n\
      \"y\": 180,\n\
      \"x\": 90,\n\
      \"uvlock\": true\n\
    },\n\
    \"face=wall,facing=south,powered=true\": {\n\
      \"model\": \"betterend:block/${name}_pressed\",\n\
      \"y\": 180,\n\
      \"x\": 90,\n\
      \"uvlock\": true\n\
    },\n\
    \"face=wall,facing=west,powered=false\": {\n\
      \"model\": \"betterend:block/${name}\",\n\
      \"y\": 270,\n\
      \"x\": 90,\n\
      \"uvlock\": true\n\
    },\n\
    \"face=wall,facing=west,powered=true\": {\n\
      \"model\": \"betterend:block/${name}_pressed\",\n\
      \"y\": 270,\n\
      \"x\": 90,\n\
      \"uvlock\": true\n\
    }\n\
  }\n\
}" > ResourcePack/assets/betterend/blockstates/${name}.json
	printf "{\n\
  \"parent\": \"minecraft:block/button\",\n\
  \"textures\": {\n\
    \"texture\": \"betterend:block/${textureName}\"\n\
  }
}" > ResourcePack/assets/betterend/models/block/${name}.json
	printf "{\n\
  \"parent\": \"minecraft:block/button_pressed\",\n\
  \"textures\": {\n\
    \"texture\": \"betterend:block/${textureName}\"\n\
  }
}" > ResourcePack/assets/betterend/models/block/${name}_pressed.json
	printf "{\n\
  \"parent\": \"minecraft:block/button_inventory\",\n\
  \"textures\": {\n\
    \"texture\": \"betterend:block/${textureName}\"\n\
  }
}" > ResourcePack/assets/betterend/models/block/${name}_inventory.json
	printf "{\n\
  \"parent\": \"betterend:block/${name}_inventory\"\n\
}" > ResourcePack/assets/betterend/models/item/${name}.json
done <./ItemLists/Buttons.txt

while read name
do
	textureName=$(sed 's/.\{5\}$//' <<< "$name")
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
		textureName=terminite_tile
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
		textureName=thallasium_tile
	fi
	if [[ $textureName == end_lotus ]];
	then
		textureName=end_lotus_planks
	fi
	printf "{\n\
  \"multipart\": [\n\
    {\n\
      \"when\": {\n\
        \"up\": \"true\"\n\
      },\n\
      \"apply\": {\n\
        \"model\": \"betterend:block/${name}_post\"\n\
      }\n\
    },\n\
    {\n\
      \"when\": {\n\
        \"north\": \"low\"\n\
      },\n\
      \"apply\": {\n\
        \"model\": \"betterend:block/${name}_side\",\n\
        \"uvlock\": true\n\
      }\n\
    },\n\
    {\n\
      \"when\": {\n\
        \"east\": \"low\"\n\
      },\n\
      \"apply\": {\n\
        \"model\": \"betterend:block/${name}_side\",\n\
        \"y\": 90,\n\
        \"uvlock\": true\n\
      }\n\
    },\n\
    {\n\
      \"when\": {\n\
        \"south\": \"low\"\n\
      },\n\
      \"apply\": {\n\
        \"model\": \"betterend:block/${name}_side\",\n\
        \"y\": 180,\n\
        \"uvlock\": true\n\
      }\n\
    },\n\
    {\n\
      \"when\": {\n\
        \"west\": \"low\"\n\
      },\n\
      \"apply\": {\n\
        \"model\": \"betterend:block/${name}_side\",\n\
        \"y\": 270,\n\
        \"uvlock\": true\n\
      }\n\
    },\n\
    {\n\
      \"when\": {\n\
        \"north\": \"tall\"\n\
      },\n\
      \"apply\": {\n\
        \"model\": \"betterend:block/${name}_side_tall\",\n\
        \"uvlock\": true\n\
      }\n\
    },\n\
    {\n\
      \"when\": {\n\
        \"east\": \"tall\"\n\
      },\n\
      \"apply\": {\n\
        \"model\": \"betterend:block/${name}_side_tall\",\n\
        \"y\": 90,\n\
        \"uvlock\": true\n\
      }\n\
    },\n\
    {\n\
      \"when\": {\n\
        \"south\": \"tall\"\n\
      },\n\
      \"apply\": {\n\
        \"model\": \"betterend:block/${name}_side_tall\",\n\
        \"y\": 180,\n\
        \"uvlock\": true\n\
      }\n\
    },\n\
    {\n\
      \"when\": {\n\
        \"west\": \"tall\"\n\
      },\n\
      \"apply\": {\n\
        \"model\": \"betterend:block/${name}_side_tall\",\n\
        \"y\": 270,\n\
        \"uvlock\": true\n\
      }\n\
    }\n\
  ]\n\
}" > ResourcePack/assets/betterend/blockstates/${name}.json
	printf "{\n\
  \"parent\": \"minecraft:block/wall_inventory\",\n\
  \"textures\": {\n\
    \"wall\": \"betterend:block/${textureName}\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/${name}_inventory.json
	printf "{\n\
  \"parent\": \"minecraft:block/template_wall_post\",\n\
  \"textures\": {\n\
    \"wall\": \"betterend:block/${textureName}\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/${name}_post.json
	printf "{\n\
  \"parent\": \"minecraft:block/template_wall_side\",\n\
  \"textures\": {\n\
    \"wall\": \"betterend:block/${textureName}\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/${name}_side.json
	printf "{\n\
  \"parent\": \"minecraft:block/template_wall_side_tall\",\n\
  \"textures\": {\n\
    \"wall\": \"betterend:block/${textureName}\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/${name}_side_tall.json
	printf "{\n\
  \"parent\": \"betterend:block/${name}_inventory\"\n\
}" > ResourcePack/assets/betterend/models/item/${name}.json
done <./ItemLists/Walls.txt

while read name
do
	bottomTexture="minecraft:block/end_stone"
	if [[ $name == *pallidium* ]];
	then
		bottomTexture="betterend:block/umbralith_7"
	fi
	printf "{\n\
  \"variants\": {\n\
    \"\": {\n\
      \"model\": \"betterend:block/${name}\"\n\
    }\n\
  }\n\
}" > ResourcePack/assets/betterend/blockstates/${name}.json
	printf "{\n\
  \"parent\": \"minecraft:block/cube_bottom_top\",\n\
  \"textures\": {\n\
    \"top\": \"betterend:block/${name}_top\",\n\
    \"bottom\": \"${bottomTexture}\",\n\
    \"side\": \"betterend:block/${name}_side\"\n\
  }\n\
}" > ResourcePack/assets/betterend/models/block/${name}.json
done <./ItemLists/Grass.txt