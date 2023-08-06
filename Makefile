DESTDIR ?= tmp/output
INSTALL ?= install

all:

clean:

mrproper: clean
	rm -rf tmp/output
	-rmdir --ignore-fail-on-non-empty --parents tmp

install:
	umask 022
	install -D -m0755 hooks/pkcs12-unifi $(DESTDIR)/usr/sbin/acmetool-pkcs12-unifi-hook
	install -D -m0755 hooks/pkcs12-unifi.stub $(DESTDIR)/etc/acme/hooks/pkcs12-unifi

.PHONY: all install clean mrproper
