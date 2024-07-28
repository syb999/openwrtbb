#
# Copyright (C) 2013 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
# HN1200
# on board CPU1 : rt3052f  ttl: 57600
#
# on board CPU2 : ARM926EJ-S ttl: 115200
# 

define Profile/HN1200
	NAME:=CMCC HN1200
	PACKAGES:=kmod-leds-gpio wpad-mini kmod-usb-rt305x-dwc_otg
endef

define Profile/HN1200/Description
	Package set for CMCC HN1200.
endef

$(eval $(call Profile,HN1200))
