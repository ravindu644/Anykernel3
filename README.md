# Anykernel3 Script for Install KSU. 

- Clone the repo by :
```
https://github.com/ravindu644/.git
```
- Open Anykernel3 folder any put your compiled Kernel there.
- Edit your boot partitions path. (you can find it via a root explorer; just take a look.)
- If your device doesn't have a RAMDISK in the boot partition (you can check it via Magisk manager), you have to edit anykernel.sh's "dump_boot;" to "split_boot;" and "write_boot;" to "flash_boot;"
- Edit the "Version" file also.
- After doing all the changes, you can make a flashable ZIP using terminal. Here is the command:
```
zip -r "Your Kernel Name.zip" *
```
- Copy it to your phone and, install using TWRP.
- Done.
<hr>

Edited by: <a href="https://t.me/SamsungTweaks">@SamsungTweaks</a>
Original Source: <a href="https://github.com/osm0sis/AnyKernel3">@osm0sis</a>
