# pop-launcher-plugin-clip (WIP)
A clipboard manager plugin for [pop-launcher](https://github.com/pop-os/launcher). Stores the current clipboard item in a searchable list

### Dependencies
[xclip](https://github.com/astrand/xclip)\
Required for copying to the clipboard\
Debian/Ubuntu and derivatives - `sudo apt install xclip`\
Nix package - `nix-env -iA nixpkgs.xclip`

### Installation
For user installation, clone the repo and run `make install`. Make sure the dependencies are installed\
For system-wide installation, download and install the deb file

### Usage
In pop launcher type clip, this will store the current clipboard item if it is not already stored. Typing clip followed by a query searches for the closest matching clipboard item. Pressing enter copies the result into the clipboard.

### Known issues
Currently no way to add items to the clipboard withouth having to activate the plugin first, causes missed items\
For example, copying a word, and then copying another word before activating the plugin results in the first word being missed
