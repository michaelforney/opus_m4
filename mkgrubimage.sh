#!/bin/bash

modules=( ata at_keyboard boot cat echo ext2 linux ls memdisk normal part_gpt
    reboot serial tar )
grub_dir=${1:-grub-1.99}

${grub_dir}/grub-mkimage -d ${grub_dir}/grub-core -m memdisk.tar -o grub.elf \
    -O i386-coreboot -C xz ${modules[@]}

