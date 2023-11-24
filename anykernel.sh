# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
do.devicecheck=0
do.modules=1
do.systemless=0
do.cleanup=1
do.cleanuponabort=0
device.name1=beyondx
device.name2=
device.name3=
device.name4=
device.name5=
supported.versions=
supported.patchlevels=
'; } # end properties

# shell variables
block=/dev/block/by-name/boot; ##path to your boot partition
dtboblock=/dev/block/by-name/dtbo; ##path to your dtbo partition
is_slot_device=0;
ramdisk_compression=auto;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## Trim partitions
$bin/busybox fstrim -v /data;

# boot install
dump_boot; # use split_boot to skip ramdisk unpack, e.g. for devices with init_boot ramdisk
# flash_dtbo;
write_boot; # use flash_boot to skip ramdisk repack, e.g. for devices with init_boot ramdisk
## end boot install

# Vendor boot
#block=vendor_boot;
#is_slot_device=1;
#ramdisk_compression=auto;

# reset for vendor_boot patching
#reset_ak;

## AnyKernel vendor_boot install
#split_boot;

#flash_boot;
## end vendor_boot install
