AUDIO_HW_ROOT := $(call my-dir)

ifeq ($(strip $(BOARD_USES_ALSA_AUDIO)),true)
    include $(AUDIO_HW_ROOT)/alsa_sound/Android.mk
    include $(AUDIO_HW_ROOT)/audiod/Android.mk
    include $(AUDIO_HW_ROOT)/libalsa-intf/Android.mk
    include $(AUDIO_HW_ROOT)/mm-audio/Android.mk
    include $(AUDIO_HW_ROOT)/policy_hal/Android.mk
else
ifeq ($(TARGET_BOARD_PLATFORM),msm8660)
    include $(AUDIO_HW_ROOT)/msm8660/Android.mk
    include $(AUDIO_HW_ROOT)/mm-audio/Android.mk
    include $(AUDIO_HW_ROOT)/policy_hal/Android.mk
endif
endif
