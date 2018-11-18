FROM andzuc/gentoo-stage3amd64

COPY package.use/* /etc/portage/package.use/
RUN emerge -v app-emulation/qemu
