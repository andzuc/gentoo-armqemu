FROM andzuc/gentoo-stage3amd64



COPY package.use/* /etc/portage/package.use/
# QEMU execve patch:
# https://github.com/balena-io/qemu/commit/6b9e5be0fbc07ae3d6525bbd57c60da58d33b840
RUN curl --create-dirs \
    -o /etc/portage/patches/app-emulation/qemu/balena-io-execve.patch \
    https://github.com/balena-io/qemu/commit/6b9e5be0fbc07ae3d6525bbd57c60da58d33b840.patch
RUN emerge -v app-portage/gentoolkit
RUN ebuild "$(equery which app-emulation/qemu)" clean prepare
# RUN emerge -v \
#     --autounmask-write=y --autounmask-continue=y \
#     app-emulation/qemu
