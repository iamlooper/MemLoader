![XLoad](https://github.com/iamlooper/XLoad/raw/main/xload.jpg)

# XLoad

Load any android app or file in physical RAM

## What is XLoad™ ?

**XLoad™** is a magisk module which is capable of locking android files directly into physical RAM which benefits in increasing readahead speeds and better I/O scheduling with no jitters or lags for that specified file

## How to use it ?

Consider, you are playing a game and game sucks in loading animations and textures and also lags too. Then, just use **XLoad™**, load its data and if it has .obb then load it also. After loading, try to play the game, you will feel smoother animations, fast texture loading and better gameplay experience. Because, using RAM is faster than internal disks. You can also use this in loading music or a movie or anything you want to load in RAM

## Notes

- It is recommended for those who has 4GB+ RAM. But, low ram users can also load files in RAM keeping in mind the available ram they have and the size of data that file has

- Keep in mind that kernel might kick out loaded data in RAM under aggressive RAM usage circumstances or if you are low on RAM

- Some files may not get loaded due to Scoped Storage introduced in A11+

- If device starts to lag after loading data or at the process of loading. Then, it is clear that you are on low RAM. To fix it, just reboot your device, all loaded data will get unloaded and your device will be back at normal

- Don't provide file paths with spaces i.e /storage/emulated/0/Music/Never Gonna Give Up.mp3, they won't work. Consider, using file paths like /storage/emulated/0/Music/Never_Gonna_Give_Up.mp3

- While unloading a app, you will see a long file path of it, that's the actual file path that a user android app has in android system. Copy that file path and unload it. Don't provide package name, it won't work

