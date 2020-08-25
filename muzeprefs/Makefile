ARCHS = arm64 arm64e
TARGET = iphone:clang:13.0:11.2

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = MuzePrefs

MuzePrefs_FILES = MUZRootListController.m
MuzePrefs_FRAMEWORKS = UIKit
MuzePrefs_PRIVATE_FRAMEWORKS = Preferences
MuzePrefs_INSTALL_PATH = /Library/PreferenceBundles
MuzePrefs_CFLAGS = -fobjc-arc
MuzePrefs_EXTRA_FRAMEWORKS += Cephei CepheiPrefs

include $(THEOS_MAKE_PATH)/bundle.mk