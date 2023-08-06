acme-dns hook for Ubiquiti UniFi Controller
===========================================

This is a work in progress.

This is an [acmetool](https://github.com/hlandau/acme) DNS validation hook
script and client for [Ubiquiti's "unifi" server](https://ui.com/download/releases/network-server).

Installation instructions
=========================

Copy the hook script to `/etc/acme/hooks/`.

Command-line usage
==================

```
Usage: echo example.com | acmetool-acmedns-hook live-updated
```
