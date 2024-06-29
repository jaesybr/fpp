TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = 1


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Fps

Fps_FILES = Tweak.x
Fps_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
