LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), rosemary)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif