#
# Copyright (C) 2013 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/IU-01W
	NAME:=DELUX IU-01W
	PACKAGES:=\
		kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-ledtrig-netdev \
		panel-ap-setup i2c-tools
endef

define Profile/IU-01W/Description
	Package set for DELUX IU-01W board
endef

$(eval $(call Profile,IU-01W))

