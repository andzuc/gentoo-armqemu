gentoo-armqemu: amd64 qemu emerged from Gentoo app-emulation/qemu

/etc/portage/package.use/qemu.use:
app-emulation/qemu      static-user tci QEMU_SOFTMMU_TARGETS: -x86_64 arm aarch64 QEMU_USER_TARGETS: arm armeb aarch64 aarch64_be

Applied patch "option to intercept execve() syscalls" by Petros Angelatos
https://patchwork.kernel.org/patch/8052841/
