#
# Copyright (C) 2013 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/HN1200
	NAME:=CMCC HN1200
	PACKAGES:=kmod-leds-gpio wpad-mini kmod-usb-rt305x-dwc_otg
endef

define Profile/HN1200/Description
	Package set for CMCC HN1200.
endef

$(eval $(call Profile,HN1200))
