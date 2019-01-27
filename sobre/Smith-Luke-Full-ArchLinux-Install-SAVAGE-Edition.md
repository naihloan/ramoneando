# Full ArchLinux Install SAVAGE Edition

### by Luke Smith  

00:28 Requirements: web + usb drive + linux rtfm  
00:53 Video series > Two parts: 1. Install 2. Config.    
02:28 Expect blank prompt screen after installed os  
03:00 `archlinux.org` >> download `.iso` file 500 MB aproximate size  
03:50 Check download through `ranger`  
04:05 `lsblk` [Look at plugged devices: sdX shows drives]  
05:05 Learn where you can put the arch-`.iso`. Be Sure!  
05:26 Command `dd` >> to create USB arch drive  
06:05 `dd if=/PATH/arch.iso of=/dev/sdX status="progress"`  
08:50 Explanation how the USB arch drive was created  
09:42 Plug USB and reboot PC while pressing key key  
10:00 Expect blank screen to start arch linux install   

******

12:41 Let the show begin!!  
13:02 1st Check if you need to have a UEFI system  
14:01 `ls /sys/firmware/efi/efivars` >> if no access OK //  
if plenty information >> see link  
15:00 `ping lukesmith.xyz` [ping website to check connection]  
15:23 `wifi-menu` command [If you don't have an ethernet cord]  
15:45 `timedatectl set-ntp true` [to set clock]  
16:00 `lsblk` >> to partition drive  
17:16  `fdisk /dev/sdb` [Check partitions] >> new command prompt:  
`m` gives information to proceed   
`p` shows drive information   
`d` to delete partition   
18:06 `n` [Create new partitions]   
`p` [Primary partition] >> insert #1  
18:20 `Enter` [For default sector size and last sector] for `boot`  
`+200MB` (Remove Previous? Yes!)  
19:00 `p` >> New boot partition ready!  
19:40 `n` >> `Enter` default >> `Enter` for First sector >>  
`+12G` for swap sector   
20:40 Repeat the process for third partition for root `/` +15 or  
`+25G`  
21:45  Repeat the process for third partition for home directory and use the rest of the space by pressing double enter at first and last sector  
22:50 `w` (Backup everything!!) [Now wipe/write on everything]  
24:55 Now create file systems: EXT4 for boot, home, and root  
25:50 `mkfs.ext4 /dev/sdb1` (for boot partition)  
26:10 `mkfs.ext4 /dev/sdb3` (for root partition)  
26:17 `mkfs.ext4 /dev/sdb4` (for home partition)  
26:55 `mkswap /dev/sdb2` `swapon /dev/sdb2` [Last thing to set is swap partition]  
28:28 `mount /dev/sdb3 /mnt` [Mount partitions to prepare installation]  
`ls /mnt` [Check]  
29:16 `mkdir /mnt/home` [Make folders to mount the other drives]  
`ls /mnt` [Check]  
29:30 `mkdir /mnt/boot` [Make folders to mount the other drives]  
`ls /mnt` [Check]  
29:45 [Mount boot + home to these folders]  
`mount /dev/sdb1 /mnt/boot`  
`mount /dev/sdb1 /mnt/home`  
`lsblk` [all mounted] and prepared to install arch linux  

******

30:51 `pacstrap /mnt base base-devel vim` [installs system]  
32:24 Still needed to install boot loader, fstab, internet access and stop dependency on USB drive  
33:18 Create fstab file >> which mounts everything on boot  
34:02 example `vim /etc/fstab`  
34:45 `genfstab -U /mnt >> /mnt/etc/fstab` [uses UUID]   
36:50 Check `vim /mnt/etc/fstab`  
37:25 Finish installation with boot loader  
37:35 `arch-chroot /mnt` [Big Bang >> now running from hard drive, not USB]  
38:10 `ls` [shows all folders in system]  
38:50 `pacman -S networkmanager` [to identify web connections]  
39:41 `system enable NetworkManager`
automatically start NetworkManager  
40:25 `pacman -S grub` [Install Boot Loader!!]  
41:05 `grub-install --target=i386-pc /dev/sdX` [Generates grub config.]  
42:00 `grub-mkconfig -o /boot/grub/grub.cfg` [Set grub configuration]  
42:42 `passwd` [type your thing for first time]  
43:28 `vim /etc/locale.gen` [generate locale] >> uncomment relevant lines  
44:25 `locale-gen` [reads previous file and creates locales]  
44:45 `vim /etc/locale.conf` [sets lang variable]  
`LANG=en_US.UTF-8`  
45:28 `ls /usr/share/zoneinfo/` [set time zone]  
46:15 `ls /etc/localtime`  
46:30 `ln -sf /usr/share/zoneinfo/America/Phoenix /etc/localtime` ["PC: I am in this time zone"]  
47:35 `vim /etc/hostname` >> `arch` [sets host name for your computer]  
48:50 `umount -R /mnt` [Exit current systems recursively]

******

49:20 `reboot`  
50:50 `curl -LO larbs.xyz/larbs.sh` [Luke's Auto-Rice Bootstraping Scripts]  
`bash larbs.sh`  
