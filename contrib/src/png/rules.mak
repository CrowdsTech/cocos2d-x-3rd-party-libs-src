# PNG
PNG_VERSION := 1.6.44
PNG_URL := https://download.sourceforge.net/libpng/libpng-$(PNG_VERSION).tar.gz

$(TARBALLS)/libpng-$(PNG_VERSION).tar.gz:
	$(call download,$(PNG_URL))

.sum-png: libpng-$(PNG_VERSION).tar.gz


png: libpng-$(PNG_VERSION).tar.gz .sum-png
	$(UNPACK)
	$(MOVE)

DEPS_png = zlib $(DEPS_zlib)

.png: png
	cd $< && $(HOSTVARS) ./configure $(HOSTCONF)
	cd $< && rm -f aclocal.m4
	cd $< && aclocal && autoconf
	cd $< && $(MAKE) install
	touch $@
