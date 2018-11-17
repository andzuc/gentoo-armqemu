FROM andzuc/gentoo-stage3amd64

# emerge qemu: user target arm
RUN USE="static-libs static-user" \
    QEMU_SOFTMMU_TARGETS="" \
    QEMU_USER_TARGETS="arm" \
    emerge -v app-emulation/qemu
