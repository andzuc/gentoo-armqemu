FROM andzuc/gentoo-stage3amd64

COPY package.use/* /etc/portage/package.use/
RUN emerge -v --autounmask-write=y app-emulation/qemu \
    && dispatch-conf \
    && emerge -v app-emulation/qemu
