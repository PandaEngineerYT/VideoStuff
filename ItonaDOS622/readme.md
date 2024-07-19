Setting up Itona TC7521d for DOS 6.22 can be tricky, but if you google a little you should be able to do it just fine. It's tricky as I haven’t found a way to easily install whole DOS directly on the hard disk.

1. Make VM (for example with [VirtualBox](https://www.virtualbox.org/)) on your PC and install DOS 6.22 from floppy images. If you create a VM with VHD or VHDX disk it will be easily mountable under Windows. Optionally get ready made hard disk with DOS install.
2. Once done, create a bootable USB stick (I used [Rufus](https://rufus.ie/)) with first disk of DOS install.
3. Start Itona with that USB stick and without running setup start FDISK.
4. In FDISK remove all partitions and create just one primary <2GB (it will be FAT16).
5. Reboot and start with that USB stick again.
6. This time run FORMAT C: /S /Q
7. Go back to your PC, create a bootable FreeDOS USB stick and make a copy of all files from the VM disk into a subfolder. You might want to add Norton Commander or something similar for later.
8. Boot form USB stick and copy all files form the subfolder into root of your drive, overriding evrything (using Norton Commander will make easier to copy even system and hidden files)
9. Remove USB stick, reboot. Welcome to DOS 6.22 in Real Mode! Now you can mess with CONFIG.SYS, AUTOEXEC.BAT and add some of your own drivers.

[EXTRA] - add Windows XP or Windows 7 (you won't find any other drivers AFAIK, I wasn't able to install Windows 95 at all).
Just make a bootable USB stick with ISO, install Windows, creating new partition in remaining space and selecting it as destination. This will get you a boot menu where you can pick the OS since Windows will discover DOS too. Important: This messes with MBR, so you may want to back it up just in case.

You can find the video of me messing with the PC on [YouTube](https://youtu.be/wWfnmjMuwJg)
