#
# Copyright (C) 2019 The Dirty Unicorns Project
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

SCORPION_DEVICE := $(patsubst %f,%,$(subst scorpion_,,$(SCORPION_BUILD)))

ifneq ($(filter oneplus3,$(SCORPION_DEVICE)),)
DEVICE_PACKAGE_OVERLAYS += vendor/themes/wallpapers/1080x1920/
else ifneq ($(filter blueline bonito,$(SCORPION_DEVICE)),)
DEVICE_PACKAGE_OVERLAYS += vendor/themes/wallpapers/1080x2280/
else ifneq ($(filter marlin sailfish wahoo,$(SCORPION_DEVICE)),)
DEVICE_PACKAGE_OVERLAYS += vendor/themes/wallpapers/1440x2560/
else ifneq ($(filter coral crosshatch emulator flame taimen,$(SCORPION_DEVICE)),)
DEVICE_PACKAGE_OVERLAYS += vendor/themes/wallpapers/1440x2960/
endif

DEVICE_PACKAGE_OVERLAYS += vendor/themes/overlay/common/
