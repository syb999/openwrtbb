GCC_VARIANT:=initial

include ../common.mk

GCC_CONFIGURE += \
	--with-newlib \
	--with-sysroot=$(TOOLCHAIN_DIR) \
	--enable-languages=c \
	--disable-shared \
	--disable-threads \

define Host/Compile
	$(CP) $(BUILD_DIR_TOOLCHAIN)/linux-dev/* $(BUILD_DIR_TOOLCHAIN)/$(LIBC)-dev/
	+$(GCC_MAKE) $(HOST_JOBS) -C $(GCC_BUILD_DIR) \
		all-build-libiberty \
		all-gcc \
		all-target-libgcc \
		CXXFLAGS="-std=c++11"
endef

define Host/Install
	$(GCC_MAKE) -C $(GCC_BUILD_DIR) \
		prefix="$(TOOLCHAIN_DIR)/initial" \
		install-gcc \
		install-target-libgcc

	# XXX: glibc insists on linking against libgcc_eh
	( cd $(TOOLCHAIN_DIR)/initial/lib/gcc/$(REAL_GNU_TARGET_NAME)/$(PKG_VERSION) ; \
		[ -e libgcc_eh.a ] || ln -sf libgcc.a libgcc_eh.a ; \
		cp libgcc.a libgcc_initial.a; \
	)

	$(call FixupLibdir,$(TOOLCHAIN_DIR)/initial)
	$$(call file_copy,$(TOOLCHAIN_DIR)/initial/.,$(TOOLCHAIN_DIR)/)
endef

$(eval $(call HostBuild))
