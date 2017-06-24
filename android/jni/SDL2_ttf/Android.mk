LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := SDL2_ttf

FREETYPE_LIBRARY_PATH := external/freetype-2.4.12

LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_SRC_FILES := ../prebuilts/libSDL2_ttf.so

ifneq ($(FREETYPE_LIBRARY_PATH),)
    LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(FREETYPE_LIBRARY_PATH)/include
    LOCAL_CFLAGS += -DFT2_BUILD_LIBRARY
endif

LOCAL_SHARED_LIBRARIES := SDL2

LOCAL_EXPORT_C_INCLUDES += $(LOCAL_C_INCLUDES)

include $(PREBUILT_SHARED_LIBRARY)
