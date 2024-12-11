# curl

CURL_VERSION := 8.11.0
CURL_URL :=  http://curl.haxx.se/download/curl-$(CURL_VERSION).tar.gz

$(TARBALLS)/curl-$(CURL_VERSION).tar.gz:
	$(call download,$(CURL_URL))

.sum-curl: curl-$(CURL_VERSION).tar.gz

curl: curl-$(CURL_VERSION).tar.gz .sum-curl
	$(UNPACK)
	$(UPDATE_AUTOCONFIG)
	$(MOVE)

DEPS_curl = zlib $(DEPS_zlib)

DEPS_curl = openssl $(DEPS_openssl)

ifdef HAVE_MACOSX
#configure_option=--with-nghttp2=$(HOMEBREW_PREFIX)/opt/libnghttp2 --with-libidn2=$(HOMEBREW_PREFIX)/opt/libidn2
configure_option=--without-nghttp2 --without-libidn2
endif

ifdef HAVE_LINUX
configure_option=--without-libidn --without-librtmp
endif

ifdef HAVE_TVOS
configure_option+=--disable-ntlm-wb
endif

.curl: curl .zlib .openssl
	$(RECONF)
	cd $< && $(HOSTVARS_PIC) ./configure $(HOSTCONF) \
		--with-ssl=$(PREFIX) \
		--with-zlib \
		--enable-ipv6 \
		--disable-ldap \
		--without-libpsl \
		$(configure_option)

	cd $< && $(MAKE) install
	touch $@
