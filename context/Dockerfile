# name the portage image
FROM andzuc/gentoo-portage:latest as portage

# image is based on stage3
FROM andzuc/gentoo-stage3:latest

# copy the entire portage volume in
COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo

ENV QEMU_VERSION="5.2.0-r3"
COPY portage /etc/portage/
RUN emerge -v \
    --autounmask-write=y --autounmask-continue=y \
    =app-emulation/qemu-$QEMU_VERSION
