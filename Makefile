PLUGIN_NAME = clip

NAME = pop-launcher-plugin-$(PLUGIN_NAME)
VERSION = 0.1
PKG_VERSION = 1
ARCH = all
PKG_NAME = $(NAME)_$(VERSION)-$(PKG_VERSION)_$(ARCH).deb

LOCAL_PLUGIN_DIR = $(HOME)/.local/share/pop-launcher/plugins/
install:
	mkdir -p $(LOCAL_PLUGIN_DIR)/$(PLUGIN_NAME)/
	cp -r src/* $(LOCAL_PLUGIN_DIR)/$(PLUGIN_NAME)
	chmod +x $(LOCAL_PLUGIN_DIR)/$(PLUGIN_NAME)

BIN_DIR = usr/lib/pop-launcher/plugins/$(PLUGIN_NAME)/
deb_package:
	mkdir -p PKG_SOURCE
	cp -r debian PKG_SOURCE/DEBIAN

	mkdir -p PKG_SOURCE/$(BIN_DIR)/
	cp -r src/* PKG_SOURCE/$(BIN_DIR)
	
	dpkg-deb --root-owner-group --build PKG_SOURCE $(PKG_NAME)
	rm -r PKG_SOURCE