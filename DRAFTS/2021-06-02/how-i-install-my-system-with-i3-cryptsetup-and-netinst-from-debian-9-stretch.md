tl,dr

Know that the command to open network manager is:
nm-applet
And to open the network connections editor, it’s:
nm-connection-editor

How I install my system with i3, cryptsetup and netinst of Debian 10 Buster
===========================================================================

[Authmane Terki](/@authmane512?source=post_page-----e56569dd902b----------------------)

[Jul 28, 2018](/@authmane512/how-i-install-my-system-with-i3-cryptsetup-and-netinst-from-debian-9-stretch-e56569dd902b?source=post_page-----e56569dd902b----------------------)
· 8 min read

I use 5partitions:

-   One not encrypted in EXT4 for system (programs, etc) mounted in /
-   One encrypted for user files in EXT4 mounted in /home
-   One encrypted for logs in EXT4 mounted in /var
-   One encrypted for temporary files in EXT4 mounted in /tmp
-   A last one encrypted for swap

1. Copy previous user files
===========================

[](/@authmane512/how-to-encrypt-several-partitions-on-debian-9-stretch-with-cryptsetup-lvm-c05d83657b9e)

How to encrypt several partitions on Debian 9 (Stretch) with cryptsetup & LVM
-----------------------------------------------------------------------------

### Hello everybody,

#### medium.com

After have partitioned my hard like it’s explained in the above
tutorial, I copy content of my last backup of /home folder to the /home
partition:

sudo cp -r --preserve=all &lt;backup&gt; &lt;home part.&gt;

2. Install Debian
=================

I install Debian with the “netinst” image. When the installation ask me
what I’d like to install (like desktop, etc), I check nothing (except
the printer server in fact).

3. Install sudo command
=======================

By default, sudo is not installed with Debian. So I do:

su

apt install sudo

usermod --append -G sudo authmane512

To avoid having to write my password every 10 minutes, I add below line
in *sudoers* file:

Defaults timestamp\_timeout=240

It’s means that I will have to enter my password every 240 minutes…

Before that, make sure the default editor is not an editor that you
don’t know:

sudo update-alternatives --config editor

So after launch *sudo visudo* , you should see:

\#

\# This file MUST be edited with the 'visudo' command as root.

\#

\# Please consider adding local content in /etc/sudoers.d/ instead of

\# directly modifying this file.

\#

\# See the man page for details on how to write a sudoers file.

\#

Defaults env\_reset

Defaults timestamp\_timeout=240

Defaults mail\_badpass

Defaults
secure\_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"\#
Host alias specification\# User alias specification\# Cmnd alias
specification\# User privilege specification

root ALL=(ALL:ALL) ALL\# Allow members of group sudo to execute any
command

%sudo ALL=(ALL:ALL) ALL\# See sudoers(5) for more information on
"\#include" directives:\#includedir /etc/sudoers.d

To make changes effective, logout and login again.

4. Install Fish Shell
=====================

Here’s a tutorial:

[](/@authmane512/how-to-install-fish-shell-on-debian-9-stretch-5ddd4e4f7c10)

How to install Fish Shell on Debian 9 Stretch
---------------------------------------------

### Then to make fish default for root and my user, I do:

#### medium.com

5. Install some basic utilities
===============================

sudo apt install vim ssh man nano less git tmux openssh-server locate
make build-essential rsync tree psmisc

Because I very often use Vim with root, I configure it for that:

sudo ln -s /home/authmane512/.vimrc /root/

I do same with Git and Fish Shell:

sudo ln -s /home/authmane512/.gitconfig /root/

sudo ln -s /home/authmane512/.config/fish/config.fish
/root/.config/fish/

Trash-cli
---------

sudo apt install python3-pip

sudo pip3 install trash-cli

To remember that I mustn’t use *rm* command, I add this in my
*.config/fish/config.fish* file:

alias rm='echo "This is not the command you are looking for."; false'

**NTP server**

sudo apt install ntp

sudo systemctl enable ntp

sudo systemctl restart ntp

EDIT: It seems that GNOME already do it without having to enable ntp
service.

Suspend and hibernate
---------------------

To use pm-suspend and pm-hibernate commands:

sudo apt install pm-utils

To be able to suspend my computer without having to enter my password, I
add this line to my *sudoers* file:

authmane512 ALL=(ALL) NOPASSWD: /usr/sbin/pm-suspend

Remember that to modify the file, **you must** use this command:

sudo visudo

6. Configure cryptsetup & fstab
===============================

To access to my encrypted files, I have to install cryptsetup with LVM
and modify /etc/fstab and /etc/crypttab files.

sudo apt install lvm2 crypttab

Here’s content of my */etc/fstab*

In /etc/crypttab, I just add:

mycryptedvol UUID=&lt;UUID&gt; none luks

*none* means that password will be asked at computer startup.

To get the 3 UUID, I use blkid command. There is one UUID for my FAT
partition, one for the system partion and one for the cryptsetup
partition.

Before reboot, I have to **move content of /var in the /var partition**
and then empty the /var and /home folders. We can do it with the rescue
mode of the Debian “netinst” image. It asks automatically password of
the encrypted partition.

mount /dev/mapper/MyVG-varLV /mnt

cp -r --preserve=all /var/\* /mnt/

mv /home /home.backup

mv /var /var.backup

mkdir /home

mkdir /var

Don’t forget to **be sure that /var partition is empty** before copy
anything inside!

7. Install i3 and some graphical programs
=========================================

sudo apt install i3 dmenu i3lock feh xserver-xorg xinit gksu terminator
evince nemo diodon file-roller qalculate network-manager-gnome gthumb
xfce4-session

Evince is a document viewer, Nemo a file manager, Diodon a clipboard
manager, File Roller an archive manager. It is necessary to reboot after
installation to make Terminator working.

Know that the command to open network manager is:

nm-applet

And to open the network connections editor, it’s:

nm-connection-editor

Configure i3
------------

You can get my config files here:

[](https://github.com/authmane512/i3-config)

authmane512/i3-config
---------------------

### i3-config - My i3 config files

#### github.com

Install i3blocks
----------------

i3blocks is a flexible status line for the [i3](http://i3wm.org/) window
manager. We can install it like this:

sudo apt install ruby-ronn sysstat make gcc lm-sensors alsa-utils

git clone git://github.com/vivien/i3blocks

cd i3blocks

make clean debug

sudo make install

cd ..

rm -rf i3blocks

To use it, I need to install Awesome and Entypo fonts. I put them in
/usr/local/share/fonts:

wget https://github.com/authmane512/i3-config/raw/master/entypo.ttf

wget https://github.com/authmane512/i3-config/raw/master/fontawesome.ttf

sudo mv entypo.ttf /usr/local/share/fonts/

sudo mv fontawesome.ttf /usr/local/share/fonts/

It’s necessary to restart after that. I also need the *acpi* command to
get battery state:

sudo apt install acpi

Crow Translate
--------------

I install the latest release from:

[](https://github.com/crow-translate/crow-translate/releases)

crow-translate/crow-translate
-----------------------------

### Create your free GitHub account today to subscribe to this repository for new releases and build software alongside 50…

#### github.com

Then I configure qt5ct:

\$ qt5ct

Note: It may be necessary to install these dependencies

[](https://github.com/crow-translate/crow-translate#debian-packages)

crow-translate/crow-translate
-----------------------------

### Crow Translate is a simple and lightweight translator programmed in C++ / Qt that allows to translate and speak text…

#### github.com

Firefox
-------

I add below line to */etc/apt/sources.list* :

deb http://ftp.ch.debian.org/debian sid main contrib non-free

Replace *ch* by letters of your country.

Then:

sudo apt update

sudo apt install -t sid firefox

With Firefox, we have to install below package to make sound working:

sudo apt install pulseaudio

Sublime Text 3
--------------

It’s explained very well how to install it here:

[](https://www.sublimetext.com/docs/3/linux_repositories.html)

Linux Package Manager Repositories - Sublime Text 3 Documentation
-----------------------------------------------------------------

### Sublime Text 3 includes an auto-upgrade mechanism on Windows and OS X to make upgrades a snap. Instead of going against…

#### www.sublimetext.com

Note that it’s necessary to install *apt-transport-https* because the
Sublime Text repository is in HTTPS.

IntelliJ
--------

I download IntelliJ from website:

[](https://www.jetbrains.com/idea/download/#section=linux)

Download IntelliJ IDEA: The Java IDE for Professional Developers by JetBrains
-----------------------------------------------------------------------------

### Code-centric IDE, focused on your productivity. Full Java EE support, deep code understanding, best debugger…

#### www.jetbrains.com

cd /opt

sudo tar -xf ideaIC-2018.2.1-no-jdk.tar.gz

sudo mv idea-IC-182.3911.36/ idea

sudo ln -s /opt/idea/bin/idea.sh /usr/bin/idea

sudo apt install openjdk-8-jdk \# not headless version!

IntelliJ will ask automatically to import previous settings.

I also remove files or folders that I don’t need.

KeyPass XC
----------

I’ve made this tutorial:

[](/@authmane512/how-to-easily-install-keypassxc-on-debian-9-stretch-2762420c69ef)

How to easily install KeyPassXC on Debian 9 (Stretch)
-----------------------------------------------------

### I download Keypass XC from here:

#### medium.com

8. Configure GTK 2 and 3
========================

To make my system less ugly, I install a GTK theme. For example:

sudo apt install murrine-themes

I have to configure for both Gtk 2 and 3. So, in */etc/gtk-2.0/gtkrc* ,
I put:

gtk-theme-name = "MurrinaBlue"

gtk-font-name = "Open Sans 10"

gtk-icon-theme-name = "MurrinaBlue"

gtk-double-click-time=1000

And in */etc/gtk-3.0/settings.ini* :

\[Settings\]

gtk-theme-name = MurrinaBlue

gtk-font-name = Open Sans 10

gtk-fallback-icon-theme = MurrinaBlue

gtk-icon-theme-name = MurrinaBlue

gtk-double-click-time=1000

9. Install missing firmwares
============================

I’ve made an article here:

[](/@authmane512/how-to-install-a-missing-firmware-on-linux-debian-21c0a9213c56)

How to install a missing firmware on Linux Debian
-------------------------------------------------

#### medium.com

On my laptop, the following was missing:

sudo apt install firmware-iwlwifi

I also needed to download another firmware from Github:

wget
https://github.com/winterheart/broadcom-bt-firmware/raw/master/brcm/BCM20702A1-0a5c-21e6.hcd

sudo mkdir /lib/firmware/brcm

sudo mv BCM20702A1-0a5c-21e6.hcd /lib/firmware/brcm/

To be able to use my Wi-Fi USB adapter:

sudo apt install firmware-realtek

It is necessary to reboot after installation of those firmwares.

10. Others
==========

OpenDNS
-------

\$ sudo apt install resolvconf

\$ sudo systemctl start resolvconf.service

\$ sudo systemctl enable resolvconf.service

\$ sudo systemctl status resolvconf.service

Edit content of **/etc/resolvconf/resolv.conf.d/head** :

nameserver 208.67.222.222

nameserver 208.67.220.220

Run:

\$ sudo systemctl restart resolvconf.service

\$ sudo chattr +i /etc/resolvconf/resolv.conf.d/head

\$ cat /etc/resolv.conf \# for checking

[](/@authmane512/configure-ip-updater-for-opendns-on-ubuntu-18-04-or-debian-10-buster-6994c55d73f8)

Configure IP updater for OpenDNS on Ubuntu 18.04 or Debian 10 Buster
--------------------------------------------------------------------

### Hello,

#### medium.com

Enable tap to click on touchpad
-------------------------------

We need to install:

sudo apt install xserver-xorg-input-libinput

We also have to be sure that *xserver-xorg-input-synaptics* package is
not installed:

sudo apt remove xserver-xorg-input-synaptics

Then, I add below content in */etc/X11/xorg.conf* :

Section "InputClass"

 Identifier "libinput touchpad catchall"

 MatchIsTouchpad "on"

 MatchDevicePath "/dev/input/event\*"

 Driver "libinput"

 Option "Tapping" "on"

EndSection

After that, quit and reopen your graphical interface, in this case i3.

**Edit:** Finally, I found that modify */etc/X11/xorg.conf* file give me
some problems… So I use another solution now.

We need to know the device of our touchpad:

\$ xinput list

⎡ Virtual core pointer id=2 \[master pointer (3)\]

⎜ ↳ Virtual core XTEST pointer id=4 \[slave pointer (2)\]

⎜ ↳ SynPS/2 Synaptics TouchPad id=12 \[slave pointer (2)\]

⎜ ↳ TPPS/2 IBM TrackPoint

We can easily guess that it’s “SynPS/2 Synaptics TouchPad”. We can then
find the right property to enable tap to click:

\$ xinput --list-props "SynPS/2 Synaptics TouchPad"

Device 'SynPS/2 Synaptics TouchPad':

 Device Enabled (150): 1

 Coordinate Transformation Matrix (152): 1.000000, 0.000000, 0.000000,
0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 1.000000

 libinput Tapping Enabled (287): 0

 libinput Tapping Enabled Default (288): 0

 libinput Tapping Drag Enabled (289): 1

 libinput Tapping Drag Enabled Default (290): 1

 libinput Tapping Drag Lock Enabled (291): 0

It’s “libinput Tapping Enabled”. To enable tap to click once, do:

xinput --set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping
Enabled" 1

To enable it permanently, I add below line to my i3 config file:

exec --no-startup-id xinput --set-prop "SynPS/2 Synaptics TouchPad"
"libinput Tapping Enabled" 1

Kernel parameters
-----------------

I open */etc/default/grub* and I put:

GRUB\_CMDLINE\_LINUX\_DEFAULT="quiet noresume"

*noresume* is to prevent my system trying resume. Because it always do
that uselessly and startup becomes slower…

Then I do:

sudo update-grub

or:

sudo grub-mkconfig -o /boot/grub/grub.cfg

Configure my second graphic card
--------------------------------

[](/@authmane512/how-to-configure-a-second-graphic-card-on-arch-linux-or-debian-9-stretch-9bd7f7fb7ff6)

How to configure a second graphic card on Arch Linux or Debian 9 Stretch
------------------------------------------------------------------------

### Hello! In this tutorial, I will explain step by step how I finally succeed to configure my NVIDIA graphic card on my…

#### medium.com

Control luminosity
------------------

To control luminosity of my screen, I need this program:

sudo apt install xbacklight

To configure it, I have to find the *backlight* folder in */sys/* :

sudo find /sys/ -type f -iname '\*brightness\*'

On my Lenovo Thinkpad T430, it’s:

/sys/devices/pci0000:00/0000:00:02.0/drm/card0/card0-LVDS-1/intel\_backlight/

So I open */etc/X11/xorg.conf* and I put:

Section "Device"

Identifier "Card0"

Driver "intel"

Option "Backlight"
"/sys/devices/pci0000:00/0000:00:02.0/drm/card0/card0-LVDS-1/intel\_backlight/"

EndSection

After that, I restart graphical interface.

**Edit:** Finally, I prefer not to modify */etc/X11/xorg.conf* and
rather use a command like:

echo 4400 | sudo tee /sys/class/backlight/intel\_backlight/brightness

**Edit 2**: I made a keyboard shortcut with i3 to change this file
automatically. To makes this possible, I need to make the file reachable
to non root users:

sudo chmod 666 /sys/class/backlight/intel\_backlight/brightness

Increasing the amount of inotify watchers
-----------------------------------------

echo fs.inotify.max\_user\_watches=32768 | sudo tee -a /etc/sysctl.conf

sudo sysctl -p

Edit my hosts file
------------------

git clone https://github.com/authmane512/hostsfile.git

sudo ln -s /home/authmane512/misc/myhostsfile/hosts /etc/hosts

[](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2F%40authmane512%2Fhow-i-install-my-system-with-i3-cryptsetup-and-netinst-from-debian-9-stretch-e56569dd902b&source=post_sidebar-----e56569dd902b---------------------clap_sidebar-)

11

-   [Linux](/tag/linux)
-   [Security](/tag/security)
-   [Crypto](/tag/crypto)
-   [Hacking](/tag/hacking)
-   [Computer Science](/tag/computer-science)

[](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2F%40authmane512%2Fhow-i-install-my-system-with-i3-cryptsetup-and-netinst-from-debian-9-stretch-e56569dd902b&source=post_actions_footer-----e56569dd902b---------------------clap_footer-)

11 claps

[](/@authmane512?source=follow_footer--------------------------follow_footer-)

Written by

[Authmane Terki](/@authmane512?source=follow_footer--------------------------follow_footer-)
--------------------------------------------------------------------------------------------

Follow

#### Online maths tutor and developer — mathcam.ch

Follow

[](/@authmane512?source=follow_footer--------------------------follow_footer-)

Written by

[Authmane Terki](/@authmane512?source=follow_footer--------------------------follow_footer-)
--------------------------------------------------------------------------------------------

Follow

#### Online maths tutor and developer — mathcam.ch

[](https://medium.com/p/e56569dd902b/responses/show?source=follow_footer--------------------------follow_footer-)

Write the first response

More From Medium
----------------

[Developing modern sites with good performance](/@jmperezperez/developing-modern-sites-with-good-performance-b34b7eb231e6?source=post_internal_links---------0------------------)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

[José M.
Pérez](/@jmperezperez?source=post_internal_links---------0------------------)

[](/@jmperezperez/developing-modern-sites-with-good-performance-b34b7eb231e6?source=post_internal_links---------0------------------)

[Uniting SQL and NoSQL for Monitoring: Why PostgreSQL is the ultimate data store for Prometheus](/timescale/sql-nosql-data-storage-for-prometheus-devops-monitoring-postgresql-timescaledb-time-series-3cde27fd1e07?source=post_internal_links---------1------------------)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

[Niksa
Jakovljevic](/@niksa.jakovljevic?source=post_internal_links---------1------------------)
in
[Timescale](/timescale?source=post_internal_links---------1------------------)

[](/timescale/sql-nosql-data-storage-for-prometheus-devops-monitoring-postgresql-timescaledb-time-series-3cde27fd1e07?source=post_internal_links---------1------------------)

[Beginning Python Programming — Part 1](/better-programming/beginning-python-programming-part-1-variables-constants-and-types-1199da1572c8?source=post_internal_links---------2------------------)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

[Bob
Roebling](/@broebling?source=post_internal_links---------2------------------)
in [Better
Programming](/better-programming?source=post_internal_links---------2------------------)

[](/better-programming/beginning-python-programming-part-1-variables-constants-and-types-1199da1572c8?source=post_internal_links---------2------------------)

[Understanding Java threads once and for all](/swlh/understanding-java-threads-once-and-for-all-711f71e0ec1e?source=post_internal_links---------3------------------)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

[Giuliana
Bezerra](/@giu.drawer?source=post_internal_links---------3------------------)
in [The
Startup](/swlh?source=post_internal_links---------3------------------)

[](/swlh/understanding-java-threads-once-and-for-all-711f71e0ec1e?source=post_internal_links---------3------------------)

[Difference Between Java Monitor and Lock](/swlh/difference-between-java-monitor-and-lock-4677c1b6715f?source=post_internal_links---------4------------------)
--------------------------------------------------------------------------------------------------------------------------------------------------------------

[Vaibhav
Singh](/@vaibhav0109?source=post_internal_links---------4------------------)
in [The
Startup](/swlh?source=post_internal_links---------4------------------)

[](/swlh/difference-between-java-monitor-and-lock-4677c1b6715f?source=post_internal_links---------4------------------)

[Introduction to CSS Custom Properties](/better-programming/introduction-to-css-custom-properties-66b9474d3012?source=post_internal_links---------5------------------)
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

[Ben
Weidig](/@benweidig?source=post_internal_links---------5------------------)
in [Better
Programming](/better-programming?source=post_internal_links---------5------------------)

[](/better-programming/introduction-to-css-custom-properties-66b9474d3012?source=post_internal_links---------5------------------)

[Setting up AWS SES Email Backend for Production](/swlh/setting-up-aws-ses-email-backend-for-production-392f79dce161?source=post_internal_links---------6------------------)
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

[Ordinary
Coders](/@ordinarycoders?source=post_internal_links---------6------------------)
in [The
Startup](/swlh?source=post_internal_links---------6------------------)

[](/swlh/setting-up-aws-ses-email-backend-for-production-392f79dce161?source=post_internal_links---------6------------------)

[How To Clone or Copy a List in Python](/better-programming/how-to-clone-or-copy-a-list-in-python-9c3e15c92bf0?source=post_internal_links---------7------------------)
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

[Jonathan
Hsu](/@jhsu98?source=post_internal_links---------7------------------) in
[Better
Programming](/better-programming?source=post_internal_links---------7------------------)

[](/better-programming/how-to-clone-or-copy-a-list-in-python-9c3e15c92bf0?source=post_internal_links---------7------------------)

[](/about?autoplay=1&source=post_page-----e56569dd902b----------------------)

#### Discover Medium

Welcome to a place where words matter. On Medium, smart voices and
original ideas take center stage - with no ads in sight.
[Watch](/about?autoplay=1&source=post_page-----e56569dd902b----------------------)

[](https://medium.com/topics?source=post_page-----e56569dd902b----------------------)

#### Make Medium yours

Follow all the topics you care about, and we’ll deliver the best stories
for you to your homepage and inbox.
[Explore](https://medium.com/topics?source=post_page-----e56569dd902b----------------------)

[](/membership?source=post_page-----e56569dd902b----------------------)

#### Become a member

Get unlimited access to the best stories on Medium — and support writers
while you’re at it. Just \$5/month.
[Upgrade](/membership?source=post_page-----e56569dd902b----------------------)

#### [About](/about?autoplay=1&source=post_page-----e56569dd902b----------------------)

#### [Help](https://help.medium.com/?source=post_page-----e56569dd902b----------------------)

#### [Legal](/policy/9db0094a1e0f?source=post_page-----e56569dd902b----------------------)

#### Get the Medium app

[](https://itunes.apple.com/app/medium-everyones-stories/id828256236?pt=698524&mt=8&ct=post_page&source=post_page-----e56569dd902b----------------------)

[](https://play.google.com/store/apps/details?id=com.medium.reader&source=post_page-----e56569dd902b----------------------)
