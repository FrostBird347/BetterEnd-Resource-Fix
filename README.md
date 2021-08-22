# [BetterEnd](https://github.com/paulevsGitch/BetterEnd) Resource Fix

A custom resource pack that adds in the missing block models that mods such as [PolyMC](https://github.com/TheEpicBlock/PolyMc) or [BlueMap](https://github.com/BlueMap-Minecraft/BlueMap) are unable to find.

WARNING: I have only tested this on a server, installing this in the client's jar *might* cause issues.

Steps to install:

 - Extract the BetterEnd mod. (If you are having issues with this step, change the file's extension from .jar to .zip)
 - Merge [ResourcePack/assets/](https://github.com/FrostBird347/BetterEnd-Resource-Fix/tree/master/ResourcePack/assets) with the mod's assets folder.
 - Compress all the files inside the mod. (assets, data, fabric.mod.json, shadow, etc)
 - Rename the compressed file from .zip to .jar.
 - If you are using PolyMc, install the jar file in the server's mod folder. (remember to remove the original BetterEnd jar)
	- PolyMc has a [limit on the number of blocks that it can use](https://theepicblock.github.io/PolyMc/faq.html), I can't do anything about that.
 - If you are using BlueMap, place the jar file in BlueMap's [resourcepacks folder](https://bluemap.bluecolored.de/wiki/customization/ResourcePacks.html).
	- You might be able to compress the assets folder without merging it with the mod. I have not tested this yet.

TODO:

- [x] Items
- [x] Verify items
- [x] Fix any broken items
- [x] Blocks
- [x] Verify blocks
- [ ] Fix any broken blocks
	- [x] Stairs
	- [x] Logs
	- [x] Slabs
	- [x] Doors
	- [x] Trapdoors
	- [x] Buttons
	- [x] Pressure Plates
	- [x] Walls
	- [x] Grass
		- [x] Grass underside
	- [x] Path
	- [x] Bark
	- [ ] Bookshelves
	- [ ] Ladders
	- [ ] Chests
	- [ ] Barrels
	- [ ] Composters
	- [ ] Crafting Tables
	- [ ] Fences
	- [ ] Gates
	- [ ] Saplings
	- [ ] Lanterns
	- [ ] Other Blocks