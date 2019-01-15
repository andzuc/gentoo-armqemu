FROM andzuc/gentoo-stage3amd64

RUN emerge -v app-portage/gentoolkit \
    && ebuild "$(equery which app-emulation/qemu)" fetch
COPY portage /etc/portage/
RUN ebuild "$(equery which app-emulation/qemu)" clean prepare
# RUN emerge -v \
#     --autounmask-write=y --autounmask-continue=y \
#     app-emulation/qemu
