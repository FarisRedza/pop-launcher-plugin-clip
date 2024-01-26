# pop-launcher-plugin-clip (WIP)
A clipboard manager plugin for [pop-launcher](https://github.com/pop-os/launcher). Stores the current clipboard item in a searchable list

### Dependencies
[xclip](https://github.com/astrand/xclip)\
Required for copying to the clipboard\
Debian/Ubuntu and derivatives - `sudo apt install xclip`\
Nix package - `nix-env -iA nixpkgs.xclip`

### Installation
Clone the repo and run `make install`

### Usage
In pop launcher type clip, this will store the current clipboard item if it is not already stored. Typing clip followed by a query searches for the closest matching clipboard item. Pressing enter copies the result into the clipboard.
