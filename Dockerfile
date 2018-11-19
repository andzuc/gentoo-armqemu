FROM andzuc/gentoo-stage3amd64

COPY package.use/* /etc/portage/package.use/
RUN emerge -v --autounmask-write=y --autounmask-continue=y app-emulation/qemu
