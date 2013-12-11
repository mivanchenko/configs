#!/bin/bash

cd /mnt/gentoo
mount /dev/sda4 .
mount /dev/sda2 boot
mount -t proc proc proc
mount --rbind /dev dev
mount --rbind /sys sys
chroot . /bin/bash
echo 'env-update && source /etc/profile && export PS1="(chroot) $PS1" && cd /usr/src/linux'
