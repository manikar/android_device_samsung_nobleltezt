#
# Copyright (C) 2015 The Android Open Kang Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/samsung/nobleltezt

## device overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Properties
TARGET_SYSTEM_PROP += device/samsung/nobleltezt/system.prop

# Inherit from noblelte-common
$(call inherit-product, device/samsung/noblelte-common/noblelte-common.mk)

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/noblelte/noblelte-vendor.mk)
