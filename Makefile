INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS = arm64 arm64e
TARGET = iphone:clang:13.0:11.2

Depends: ws.hbang.common (>= 1.11)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Muze

Muze_FILES = Tweak.x
Muze_CFLAGS = -fobjc-arc
Muze_EXTRA_FRAMEWORKS += Cephei

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += muzeprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
