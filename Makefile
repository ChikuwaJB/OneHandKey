ARCHS = armv7 arm64
GO_EASY_ON_ME=1
THEOS_PACKAGE_DIR_NAME = debs
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = OneHandKey
OneHandKey_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
