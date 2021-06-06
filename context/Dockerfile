# name the portage image
FROM andzuc/gentoo-portage:latest as portage
# image is based on stage3
FROM andzuc/gentoo-stage3:latest

ENV HOST_FEATURES="-sandbox -usersandbox -ipc-sandbox -mount-sandbox -network-sandbox -pid-sandbox"
ENV HOST_USE="bindist"
ENV QEMU_VERSION="5.2.0-r3"

# copy the entire portage volume in
COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo
COPY portage /etc/portage/

RUN ls /etc/portage
RUN lscpu \
    && (echo "MAKEOPTS='-j `lscpu|grep "Thread(s) per core:"|sed 's/^.*: *\(.*\)$/\1/'`'" >>/etc/portage/make.conf) \
    && (echo "FEATURES='${HOST_FEATURES}'" >>/etc/portage/make.conf) \
    && (echo "USE='${HOST_USE}'" >>/etc/portage/make.conf) \
    && cat /etc/portage/make.conf \ 
    && emerge -q --sync \
    && emerge --info

RUN emerge -q \
    --autounmask-write=y --autounmask-continue=y \
    =app-emulation/qemu-$QEMU_VERSION
