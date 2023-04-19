# [L4D2] Left 4 Invasion: Outer Space!
This repository contains two VScripts that were made for the [Left 4 Invasion: Outer Space!](https://steamcommunity.com/sharedfiles/filedetails/?id=2802970445) custom campaign. One of which alters the AI Director and prevents infected from spawning during cutscenes and the other adds an option for the level designer to control whether boss music should play or not.

# Installation
- Drag and drop the `scripts` folder in your `left4dead2` folder

# Hammer Editor Example
![Hammer-Editor-Code-Example](https://user-images.githubusercontent.com/26851418/233135930-70d609ad-14bd-42d2-ab43-ca255ac84541.jpg)

# Stripper: Source Example
If you're running a SourceMod server, you'll need to download [Stripper: Source](https://www.bailopan.net/stripper/). 

You can add the following code to the `global_filters.cfg` file if you wish to have this code apply to all maps. If you want to add it for a specific map only, you can create `<mapname>.cfg` (e.g. `c8m1_apartment.cfg`) and add the following code:
```
add:
{
"origin" "0 0 0"
"spawnflags" "1"
"classname" "logic_auto"
"OnMapSpawn" "info_directorRunScriptCodeg_ModeScript.DisableBossMusic()0-1"
}
```

If you like to run the cutscene script, simply append by adding the following code after the `OnMapSpawn` output on the next line:
```
"OnMapSpawn" "info_directorBeginScriptl4invasion_cutscene0-1"
```

# Docs
- [L4D2 Director Scripts](https://developer.valvesoftware.com/wiki/L4D2_Director_Scripts)
- [L4D2 Vscripts](https://developer.valvesoftware.com/wiki/L4D2_Vscripts)
