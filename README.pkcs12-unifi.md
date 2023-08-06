acmetool hook for generating PKCS#12 keytores
=============================================

This is an [acmetool](https://github.com/hlandau/acme) hook that generates
PKCS#12-format keystores.

It currently only works for [Ubiquiti's "unifi" network server
package](https://ui.com/download/releases/network-server), but could easily be
improved to support other software.

Installation instructions
=========================

Copy the hook script to `/etc/acme/hooks/`, then replace
`/var/lib/unifi/keystore` with a symlink to the generated unifi.p12 file:

    if [ -e /var/lib/unifi/keystore ]; then
        mv -vT /var/lib/unifi/keystore /var/lib/unifi/keystore~
    fi
    ln -sT ../acme/live/example.net/unifi.p12 /var/lib/unifi/keystore

Command-line usage
==================

```
Usage: echo example.com | acmetool-acmedns-hook live-updated
```
