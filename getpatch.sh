#!/bin/bash

# QEMU execve patch:
# https://github.com/balena-io/qemu/commit/6b9e5be0fbc07ae3d6525bbd57c60da58d33b840
# curl --create-dirs \
#      -o patches/app-emulation/qemu/balena-io-execve.patch \
#      https://github.com/balena-io/qemu/commit/6b9e5be0fbc07ae3d6525bbd57c60da58d33b840.patch
curl --create-dirs \
     -o patches/app-emulation/qemu/linux-user-add-option-to-intercept-execve-syscalls.patch \
     https://patchwork.kernel.org/patch/8052841/mbox
