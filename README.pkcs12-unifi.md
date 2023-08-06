acme-dns hook for Ubiquiti UniFi Controller
===========================================

This is a work in progress.

This is an [acmetool](https://github.com/hlandau/acme) DNS validation hook
script and client for [Ubiquiti's "unifi" server](https://ui.com/download/releases/network-server).

Installation instructions
=========================

Copy the hook script to `/etc/acme/hooks/`, then replace
`/var/lib/unifi/keystore` with a symlink to the generated unifi.p12 file:

    if [ -e /var/lib/unifi/keystore ]; then
        mv -vT /var/lib/unifi/keystore /var/lib/unifi/keystore~
    fi
    ln -sT /var/lib/acme/live/example.net/unifi.p12 /var/lib/unifi/keystore

Command-line usage
==================

```
Usage: echo example.com | acmetool-acmedns-hook live-updated
```
