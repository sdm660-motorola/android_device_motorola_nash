#
# Copyright 2014 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter nash, $(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))

endif
