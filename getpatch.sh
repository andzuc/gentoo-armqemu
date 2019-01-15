#!/bin/bash

# QEMU execve patch:
# https://github.com/balena-io/qemu/commit/6b9e5be0fbc07ae3d6525bbd57c60da58d33b840
curl --create-dirs \
     -o patches/app-emulation/qemu/balena-io-execve.patch \
     https://github.com/balena-io/qemu/commit/6b9e5be0fbc07ae3d6525bbd57c60da58d33b840.patch
