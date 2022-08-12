# Changelog

## v0.6

- Improved menu
- Refined overall code
- Added auto locking on app launch feature
- Added new unloading logic
- Fixed some issues
- Misc. bug fixes

## v0.5

- Using `mlockall` instead of `mlock` (Locks all data into memory)
- Removed XLoad service optimization (Affecting I/O performance of loaded data)
- Miscellaneous changes & fixes

## v0.4

- Added option to turn off auto locking feature
- Integrated XLoad service optimization feature (Protection of loaded data in OOM cases)
- Enhanced XLoad locking logic
- Miscellaneous bug fixes & changes

## v0.3

- Added auto locking service (Now, stuff in XLoad list will be automatically locked into RAM after reboot)
- Improved apps locking and unloading logic
- Added support for locking system apps in RAM
- Now, XLoad log and XLoad list is in Internal storage / XLoad
- Misc. changes

## v0.2

- Improved locking logic in RAM
- Fixed bugs regarding locking files/folders
- Misc. changes and fixes

## v0.1

- Initial release