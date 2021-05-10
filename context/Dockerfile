FROM andzuc/gentoo-stage3

ENV QEMU_VERSION="5.2.0-r3"
COPY portage /etc/portage/
RUN emerge -v \
    --autounmask-write=y --autounmask-continue=y \
    =app-emulation/qemu-$QEMU_VERSION
