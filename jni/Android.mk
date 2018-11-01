LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := ffmpeg
LOCAL_SRC_FILES := libffmpeg.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libcubic
LOCAL_SRC_FILES :=  CoreApp.cpp \
					cmdutils.c \
					ffmpeg.c \
					ffmpeg_cuvid.c \
					ffmpeg_filter.c \
					ffmpeg_hw.c \
					ffmpeg_opt.c \
					ffmpeg_qsv.c \
					ffmpeg_videotoolbox.c \
					ffplay.c \
					ffprobe.c
					
LOCAL_C_INCLUDES := $(LOCAL_PATH)/libs/ffmpeg/include
LOCAL_LDLIBS := -llog -lz -ldl
LOCAL_SHARED_LIBRARIES := ffmpeg

include $(BUILD_SHARED_LIBRARY)