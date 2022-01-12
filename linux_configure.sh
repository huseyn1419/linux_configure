#!/bin/sh

# description: auto setup script to setup required programs and configure after doing fresh install

# check if root
# if [ $(id -u) -ne 0 ] ; then echo "please run as root" ; exit 1 ; fi

#========================================
#               variables start
#========================================

version="0.0.5"
line="========================================"


#========================================
#               variables end
#========================================

#========================================
#               functions start
#========================================

#========================================
#               menus start
#========================================

# main menu
main() {
  while [ 1 ] ; do
    printf "$line \n"
    printf "linux configurator \n"
    printf "version $version \n"
    printf "$line \n"
    printf " q quit \n"
    printf "10 linux (general) \n"
    printf "11 distributions \n"
    printf "$line \n"
    printf "select option: "
    read option

    case ${option} in
      q)
      exit
      ;;

      10)
      menu_linux
      ;;

      11)
      menu_distributions
      ;;

      *)
      printf "invalid option \n"
      ;;

    esac

done

}

menu_distributions() {
  while [ 1 ] ; do
    printf "$line \n"
    printf " q quit \n"
    printf " b back \n"
    printf "10 debian \n"
    printf "20 proxmox \n"
    printf "$line \n"
    printf "select option: "
    read option

    case ${option} in
      q)
      exit
      ;;

      b)
      break
      ;;

      10)
      menu_debian
      ;;

      20)
      menu_proxmox
      ;;
      
      *)
      printf "invalid option \n"
      ;;

    esac
done

}



menu_linux() {
  while [ 1 ] ; do
    printf "$line \n"
    printf " q quit \n"
    printf " b back \n"
    printf "10 flatpak \n"
    printf "11 programs \n"
    printf "12 umask \n"
    printf "13 configure swappiness \n"
    printf "$line \n"
    printf "select option: "
    read option

    case ${option} in
      q)
      exit
      ;;

      b)
      break
      ;;

      10)
      menu_flatpak
      ;;

      11)
      menu_programs
      ;;

      12)
      menu_umask
      ;;
      
      13)
      swappiness_configure
      ;;

      *)
      printf "invalid option \n"
      ;;

    esac
done

}

menu_flatpak() {
  while [ 1 ] ; do
    printf "$line \n"
    printf " q quit \n"
    printf " b back \n"
    printf "10 add flathub.org \n"
    printf "11 add flathub.org beta \n"
    printf "12 programs \n"
    printf "$line \n"
    printf "select option: "
    read option

    case ${option} in
      q)
      exit
      ;;

      b)
      break
      ;;

      10)
      flatpak_flathub
      ;;

      11)
      flatpak_flathub_beta
      ;;
      
      12)
      flatpak_menu_programs
      ;;

      *)
      printf "invalid option \n"
      ;;

    esac
done

}

menu_debian() {
  while [ 1 ] ; do
    printf "$line \n"
    printf " q quit \n"
    printf " b back \n"
    printf "10 update \n"
    printf "11 keyboard layout \n"
    printf "12 apt repositories \n"
    printf "13 flatpak \n"
    printf "14 grub \n"
    printf "15 enable multi arch i386 \n"
    printf "16 empty /etc/motd \n"
    printf "20 server gui lightweight \n"
    printf "21 auto configure \n"
    printf "99 write how-to to file \n"
    printf "$line \n"
    printf "select option: "
    read option

    case ${option} in
      q)
      exit
      ;;

      b)
      break
      ;;

      10)
      debian_update
      ;;
      
      11)
      menu_debian_keyboard_layout
      ;;

      12)
      menu_debian_apt
      ;;

      13)
      menu_debian_flatpak
      ;;

      14)
      menu_debian_grub
      ;;

      15)
      debian_multiarch
      ;;
      
      16)
      debian_motd
      ;;

      20)
      debian_gui_lightweight
      ;;

      21)
      menu_debian_configure_auto
      ;;
      
      99)
      debian_how_to_file
      ;;

      *)
      printf "invalid option \n"
      ;;

    esac
done

}

menu_debian_keyboard_layout() {
  while [ 1 ] ; do
    printf "$line \n"
    printf " q quit \n"
    printf " b back \n"
    printf "10 turkish f - turkish q - english us \n"
    printf "11 turkish q - turkish f - english us \n"
    printf "$line \n"
    printf "select option: "
    read option

    case ${option} in
      q)
      exit
      ;;

      b)
      break
      ;;

      10)
      debian_keyboard_turkish_f_turkish_q
      ;;

      11)
      debian_keyboard_turkish_q_turkish_f
      ;;

      *)
      printf "invalid option \n"
      ;;

    esac
done

}

menu_debian_apt() {
  while [ 1 ] ; do
    printf "$line \n"
    printf " q quit \n"
    printf " b back \n"
    printf "10 update sources.list \n"
    printf "11 pin to stable \n"
    printf "12 pin to testing \n"
    printf "13 pin to unstable \n"
    printf "14 enable source packages \n"
    printf "15 disable apt icon downloading \n"
    printf "$line \n"
    printf "select option: "
    read option

    case ${option} in
      q)
      exit
      ;;

      b)
      break
      ;;

      10)
      debian_apt_sources_list
      ;;

      11)
      debian_apt_pin_stable
      ;;

      12)
      debian_apt_pin_testing
      ;;

      13)
      debian_apt_pin_unstable
      ;;

      14)
      debian_apt_sources_list_source
      ;;

      15)
      debian_apt_icons_disable
      ;;

      *)
      printf "invalid option \n"
      ;;

    esac
done

}

menu_debian_flatpak() {
  while [ 1 ] ; do
    printf "$line \n"
    printf " q quit \n"
    printf " b back \n"
    printf "$line \n"
    printf "select option: "
    read option

    case ${option} in
      q)
      exit
      ;;

      b)
      break
      ;;

      10)
      flatpak_flathub
      ;;

      11)
      flatpak_flathub_beta
      ;;

      *)
      printf "invalid option \n"
      ;;

    esac
done

}

menu_debian_grub() {
  while [ 1 ] ; do
    printf "$line \n"
    printf " q quit \n"
    printf " b back \n"
    printf "10 initial configuration \n"
    printf "11 initial configuration turkish \n"
    printf "$line \n"
    printf "select option: "
    read option

    case ${option} in
      q)
      exit
      ;;

      b)
      break
      ;;

      10)
      grub_configure en
      ;;
      
      11)
      grub_configure tr
      ;;

      *)
      printf "invalid option \n"
      ;;

    esac
done

}

menu_debian_configure_auto() {
  while [ 1 ] ; do
    printf "$line \n"
    printf " q quit \n"
    printf " b back \n"
    printf "10 server \n"
    printf "11 end user \n"
    printf "$line \n"
    printf "select option: "
    read option

    case ${option} in
      q)
      exit
      ;;

      b)
      break
      ;;

      10)
      example_1
      ;;

      11)
      example_2
      ;;

      *)
      printf "invalid option \n"
      ;;

    esac
done

}

menu_programs() {
  while [ 1 ] ; do
    printf "$line \n"
    printf " q quit \n"
    printf " b back \n"
    printf "10 firefox \n"
    printf "11 vim \n"
    printf "$line \n"
    printf "select option: "
    read option

    case ${option} in
      q)
      exit
      ;;

      b)
      break
      ;;

      10)
      menu_firefox
      ;;
      
      11)
      menu_vim
      ;;

      *)
      printf "invalid option \n"
      ;;

    esac
done

}

menu_firefox() {
  while [ 1 ] ; do
    printf "$line \n"
    printf " q quit \n"
    printf " b back \n"
    printf "10 fix font \n"
    printf "$line \n"
    printf "select option: "
    read option

    case ${option} in
      q)
      exit
      ;;

      b)
      break
      ;;

      10)
      firefox_fix_font
      ;;

      *)
      printf "invalid option \n"
      ;;

    esac
done

}

menu_vim() {
  while [ 1 ] ; do
    printf "$line \n"
    printf "10 vim configure \n"
    printf " b back \n"
    printf " q quit \n"
    printf "$line \n"
    printf "select option: "
    read option

    case ${option} in
      q)
      exit
      ;;

      b)
      break
      ;;

      10)
      vim_configure
      ;;

      *)
      printf "invalid option \n"
      ;;

    esac
done

}

menu_proxmox() {
  while [ 1 ] ; do
    printf "$line \n"
    printf " q quit \n"
    printf " b back \n"
    printf "10 apt initial configuration \n"
    printf "$line \n"
    printf "select option: "
    read option

    case ${option} in
      q)
      exit
      ;;

      b)
      break
      ;;

      10)
      proxmox_apt
      ;;

      *)
      printf "invalid option \n"
      ;;

    esac
done

}

menu_umask() {
  while [ 1 ] ; do
    printf "$line \n"
    printf " q quit \n"
    printf " b back \n"
    printf "10 umask 000 all of them \n"
    printf "11 umask 000 /etc/profile \n"
    printf "12 umask 000 /etc/login.defs \n"
    printf "13 umask 000 /etc/bash.bashrc \n"
    printf "14 umask 000 to (systemd gdm) \n"
    printf "$line \n"
    printf "select option: "
    read option

    case ${option} in
      q)
      exit
      ;;

      b)
      break
      ;;

      11)
      umask_etc_profile_000
      ;;
      
      14)
      umask_gdm_000
      ;;
      
      *)
      printf "invalid option \n"
      ;;

    esac
done
}

#========================================
#               menus end
#========================================

firefox_fix_font() {
  mkdir -p ~/.var/app/org.mozilla.firefox/config/fontconfig/conf.d/
  cp /etc/fonts/conf.d/*.conf ~/.var/app/org.mozilla.firefox/config/fontconfig/conf.d/

}

flatpak_flathub() {
  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  printf "flathub activated \n"
}

flatpak_flathub_beta() {
  flatpak remote-add --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo
  printf "flathub beta activated \n"
}


flatpak_menu_programs() {
  while [ 1 ] ; do
    printf "$line \n"
    printf " q quit \n"
    printf " b back \n"
    printf "10 firefox \n"
    printf "$line \n"
    printf "select option: "
    read option

    case ${option} in
      q)
      exit
      ;;

      b)
      break
      ;;

      10)
      flatpak install flathub --assumeyes org.mozilla.firefox
      ;;
      
      *)
      printf "invalid option \n"
      ;;

    esac
done
}


umask_etc_profile_000() {
  cat <<'eof' >> /etc/profile
umask 000
eof
  printf "(umask 000) to (/etc/profile) written \n"
}

umask_gdm_000() {
  cat <<'eof' >> /etc/systemd/system/gdm.service.d/umask.conf
[Service]
UMask=0000
eof
  printf "(umask 000) to (/etc/systemd/system/gdm.service.d/umask.conf) written \n"
}


swappiness_configure() {
  cat <<'eof' > /etc/sysctl.d/99-swappiness.conf
vm.swappiness=1
eof

}


vim_configure() {
  cat <<'eof' > ~/.vimrc
"" open line numbers
set number

"" show existing tab with 2 spaces width
set tabstop=2

"" when indenting with '>', use 2 spaces width
set shiftwidth=2

"" On pressing tab, insert spaces
set expandtab

"" colorizing on
syntax on

"" colorscheme
colorscheme murphy

eof

}

proxmox_apt() {
  cat <<'eof' > /etc/apt/sources.list.d/pve-no-subscription.list
deb http://download.proxmox.com/debian/pve bullseye pve-no-subscription
eof

}

debian_update() {
  flatpak update --assumeyes
  apt update
  apt full-upgrade -y
  apt autopurge -y
}

debian_motd() {
  echo "" > /etc/motd
}

debian_configure_end_user_auto() {
  debian_motd
  
  debian_apt_sources_list
  debian_apt_pin_testing
  
  debian_keyboard_turkish_f_turkish_q
  
  configure_swappiness
  
  
  debian_how_to_file
}


debian_how_to_file() {
  cat <<'eof' > debian_how_to.txt

========================================
connect to the internet

dhclient enp2s0
========================================



========================================
download script

wget ftp.ehlinur.org/linux_configure.sh
========================================



========================================
add swap partition and configure it

dd if=/dev/zero of=/swapfile bs=1m count=512 status=progress
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
/swapfile none swap defaults 0 0
========================================



========================================
add noatime option to all filesystems in fstab file
excluding swap all partitions add option noatime
========================================



========================================
# write to /etc/fstab
#======================================
# system
UUID=7f4609ee-90cd-4c31-8a54-0891f7a3e54e /          ext4    noatime,errors=remount-ro 0  1
UUID=1813-2805                            /boot/efi  vfat    noatime,umask=0077        0  1

/swapfile                                 none       swap    defaults                  0  0
#======================================
========================================



========================================
# configure apt

sources.list
apt pin to testing
========================================



========================================
# sudo

## install
apt install sudo

## configure sudo
usermod -aG sudo user
or
visudo
========================================



========================================
# flatpak

# install flatpak
apt install flatpak

# enable flathub.org

# install gnome software or plasma flatpak backend

# flatpak only app store
========================================



========================================
# configure grub

## add shutdown and reboot options

## black wallpaper
copy black
========================================



========================================
# firmware

## install missing firmware
dmesg --human | grep firmware
dmesg --human | grep failed

## install microcode
apt install amd64-microcode
apt install intel-microcode
========================================



========================================
# server programs

xorg xinit openbox tint2
tmux fish htop
========================================



========================================
# minimal base/core
xfce4

# standard
mousepad ristretto xfce4-power-manager network-manager-gnome xfce4-whiskermenu-plugin xfce4-xkb-plugin xfce4-terminal

papirus-icon-theme

mpv
========================================



========================================
# minimal base/core
gnome-core

gnome-tweaks
========================================



========================================
virt-manager
========================================



========================================
flatpak install flathub --assumeyes org.mozilla.firefox
flatpak install flathub --assumeyes org.libreoffice.LibreOffice
flatpak install flathub --assumeyes com.calibre_ebook.calibre
flatpak install flathub --assumeyes org.kde.okular
flatpak install flathub --assumeyes org.gnome.Evince


flatpak install flathub --assumeyes org.qbittorrent.qBittorrent

flatpak install flathub --assumeyes org.gimp.GIMP
flatpak install flathub --assumeyes org.inkscape.Inkscape
flatpak install flathub --assumeyes com.obsproject.Studio
flatpak install flathub --assumeyes org.kde.kdenlive

flatpak install flathub --assumeyes com.github.wwmm.pulseeffects
flatpak install flathub --assumeyes com.github.wwmm.easyeffects

flatpak install flathub --assumeyes com.github.tchx84.Flatseal
flatpak install flathub --assumeyes com.usebottles.bottles


flatpak install flathub --assumeyes com.github.Eloston.UngoogledChromium
flatpak install flathub --assumeyes org.chromium.Chromium

flatpak install flathub --assumeyes com.github.micahflee.torbrowser-launcher
flatpak install flathub --assumeyes us.zoom.Zoom
flatpak install flathub --assumeyes org.telegram.desktop

flatpak install flathub --assumeyes com.anydesk.Anydesk

flatpak install flathub --assumeyes com.giuspen.cherrytree

========================================



========================================
# make bootup theme blank screen
plymouth-set-default-theme -R text

# rebuild initramfs
update-initramfs -u

# regenerate grub config
update-grub
========================================

eof

}

debian_multiarch() {

  dpkg --add-architecture i386

}

debian_apt_icons_disable() {

  cat <<'eof' > /etc/apt/apt.conf.d/99-no-icons
Acquire::IndexTargets {
  deb::DEP-11 {
    DefaultEnabled "false";
  };
  deb::DEP-11-icons-small {
    DefaultEnabled "false";
  };
  deb::DEP-11-icons {
    DefaultEnabled "false";
  };
  deb::DEP-11-icons-hidpi {
    DefaultEnabled "false";
  };
  deb::DEP-11-icons-large {
    DefaultEnabled "false";
  };
  deb::DEP-11-icons-large-hidpi {
    DefaultEnabled "false";
  };
};

eof

}

#=================================================================================================

debian_gui_lightweight() {

cat <<'eof' > ~/start-gui-1-openbox.sh
#!/bin/sh

echo "
exec openbox-session
" > ~/.xinitrc

startx
eof

#========================================
#        ~/.config/openbox/rc.xml
#========================================
mkdir -p ~/.config/openbox/

cat <<'eof' > ~/.config/openbox/rc.xml
<?xml version="1.0" encoding="UTF-8"?>
<!-- Do not edit this file, it will be overwritten on install.
        Copy the file to $HOME/.config/openbox/ instead. -->
<openbox_config xmlns="http://openbox.org/3.4/rc" xmlns:xi="http://www.w3.org/2001/XInclude">
  <resistance>
    <strength>10</strength>
    <screen_edge_strength>20</screen_edge_strength>
  </resistance>
  <focus>
    <focusNew>yes</focusNew>
    <!-- always try to focus new windows when they appear. other rules do
       apply -->
    <followMouse>no</followMouse>
    <!-- move focus to a window when you move the mouse into it -->
    <focusLast>yes</focusLast>
    <!-- focus the last used window when changing desktops, instead of the one
       under the mouse pointer. when followMouse is enabled -->
    <underMouse>no</underMouse>
    <!-- move focus under the mouse, even when the mouse is not moving -->
    <focusDelay>200</focusDelay>
    <!-- when followMouse is enabled, the mouse must be inside the window for
       this many milliseconds (1000 = 1 sec) before moving focus to it -->
    <raiseOnFocus>no</raiseOnFocus>
    <!-- when followMouse is enabled, and a window is given focus by moving the
       mouse into it, also raise the window -->
  </focus>
  <placement>
    <policy>Smart</policy>
    <!-- 'Smart' or 'UnderMouse' -->
    <center>yes</center>
    <!-- whether to place windows in the center of the free area found or
       the top left corner -->
    <monitor>Primary</monitor>
    <!-- with Smart placement on a multi-monitor system, try to place new windows
       on: 'Any' - any monitor, 'Mouse' - where the mouse is, 'Active' - where
       the active window is, 'Primary' - only on the primary monitor -->
    <primaryMonitor>1</primaryMonitor>
    <!-- The monitor where Openbox should place popup dialogs such as the
       focus cycling popup, or the desktop switch popup.  It can be an index
       from 1, specifying a particular monitor.  Or it can be one of the
       following: 'Mouse' - where the mouse is, or
                  'Active' - where the active window is -->
  </placement>
  <theme>
    <name>Syscrash</name>
    <titleLayout>NLIMC</titleLayout>
    <!--
      available characters are NDSLIMC, each can occur at most once.
      N: window icon
      L: window label (AKA title).
      I: iconify
      M: maximize
      C: close
      S: shade (roll up/down)
      D: omnipresent (on all desktops).
  -->
    <keepBorder>yes</keepBorder>
    <animateIconify>yes</animateIconify>
    <font place="ActiveWindow">
      <name>Monospace</name>
      <size>8</size>
      <!-- font size in points -->
      <weight>Normal</weight>
      <!-- 'bold' or 'normal' -->
      <slant>Normal</slant>
      <!-- 'italic' or 'normal' -->
    </font>
    <font place="InactiveWindow">
      <name>Monospace</name>
      <size>8</size>
      <!-- font size in points -->
      <weight>Normal</weight>
      <!-- 'bold' or 'normal' -->
      <slant>Normal</slant>
      <!-- 'italic' or 'normal' -->
    </font>
    <font place="MenuHeader">
      <name>Monospace</name>
      <size>9</size>
      <!-- font size in points -->
      <weight>Normal</weight>
      <!-- 'bold' or 'normal' -->
      <slant>Normal</slant>
      <!-- 'italic' or 'normal' -->
    </font>
    <font place="MenuItem">
      <name>Monospace</name>
      <size>9</size>
      <!-- font size in points -->
      <weight>Normal</weight>
      <!-- 'bold' or 'normal' -->
      <slant>Normal</slant>
      <!-- 'italic' or 'normal' -->
    </font>
    <font place="ActiveOnScreenDisplay">
      <name>Monospace</name>
      <size>9</size>
      <!-- font size in points -->
      <weight>Normal</weight>
      <!-- 'bold' or 'normal' -->
      <slant>Normal</slant>
      <!-- 'italic' or 'normal' -->
    </font>
    <font place="InactiveOnScreenDisplay">
      <name>Monospace</name>
      <size>9</size>
      <!-- font size in points -->
      <weight>Normal</weight>
      <!-- 'bold' or 'normal' -->
      <slant>Normal</slant>
      <!-- 'italic' or 'normal' -->
    </font>
  </theme>
  <desktops>
    <!-- this stuff is only used at startup, pagers allow you to change them
       during a session

       these are default values to use when other ones are not already set
       by other applications, or saved in your session

       use obconf if you want to change these without having to log out
       and back in -->
    <number>1</number>
    <firstdesk>1</firstdesk>
    <names>
      <name>desktop-1</name>
    </names>
    <popupTime>0</popupTime>
    <!-- The number of milliseconds to show the popup for when switching
       desktops.  Set this to 0 to disable the popup. -->
  </desktops>
  <resize>
    <drawContents>yes</drawContents>
    <popupShow>Nonpixel</popupShow>
    <!-- 'Always', 'Never', or 'Nonpixel' (xterms and such) -->
    <popupPosition>Center</popupPosition>
    <!-- 'Center', 'Top', or 'Fixed' -->
    <popupFixedPosition>
      <!-- these are used if popupPosition is set to 'Fixed' -->
      <x>10</x>
      <!-- positive number for distance from left edge, negative number for
         distance from right edge, or 'Center' -->
      <y>10</y>
      <!-- positive number for distance from top edge, negative number for
         distance from bottom edge, or 'Center' -->
    </popupFixedPosition>
  </resize>
  <!-- You can reserve a portion of your screen where windows will not cover when
     they are maximized, or when they are initially placed.
     Many programs reserve space automatically, but you can use this in other
     cases. -->
  <margins>
    <top>0</top>
    <bottom>0</bottom>
    <left>0</left>
    <right>0</right>
  </margins>
  <dock>
    <position>TopLeft</position>
    <!-- (Top|Bottom)(Left|Right|)|Top|Bottom|Left|Right|Floating -->
    <floatingX>0</floatingX>
    <floatingY>0</floatingY>
    <noStrut>no</noStrut>
    <stacking>Above</stacking>
    <!-- 'Above', 'Normal', or 'Below' -->
    <direction>Vertical</direction>
    <!-- 'Vertical' or 'Horizontal' -->
    <autoHide>no</autoHide>
    <hideDelay>300</hideDelay>
    <!-- in milliseconds (1000 = 1 second) -->
    <showDelay>300</showDelay>
    <!-- in milliseconds (1000 = 1 second) -->
    <moveButton>Middle</moveButton>
    <!-- 'Left', 'Middle', 'Right' -->
  </dock>
  <keyboard>
    <chainQuitKey>C-g</chainQuitKey>
    <!-- Keybindings for desktop switching -->
    <keybind key="C-A-Left">
      <action name="GoToDesktop">
        <to>left</to>
        <wrap>no</wrap>
      </action>
    </keybind>
    <keybind key="C-A-Right">
      <action name="GoToDesktop">
        <to>right</to>
        <wrap>no</wrap>
      </action>
    </keybind>
    <keybind key="C-A-Up">
      <action name="GoToDesktop">
        <to>up</to>
        <wrap>no</wrap>
      </action>
    </keybind>
    <keybind key="C-A-Down">
      <action name="GoToDesktop">
        <to>down</to>
        <wrap>no</wrap>
      </action>
    </keybind>
    <keybind key="S-A-Left">
      <action name="SendToDesktop">
        <to>left</to>
        <wrap>no</wrap>
      </action>
    </keybind>
    <keybind key="S-A-Right">
      <action name="SendToDesktop">
        <to>right</to>
        <wrap>no</wrap>
      </action>
    </keybind>
    <keybind key="S-A-Up">
      <action name="SendToDesktop">
        <to>up</to>
        <wrap>no</wrap>
      </action>
    </keybind>
    <keybind key="S-A-Down">
      <action name="SendToDesktop">
        <to>down</to>
        <wrap>no</wrap>
      </action>
    </keybind>
    <keybind key="W-F1">
      <action name="GoToDesktop">
        <to>1</to>
      </action>
    </keybind>
    <keybind key="W-F2">
      <action name="GoToDesktop">
        <to>2</to>
      </action>
    </keybind>
    <keybind key="W-F3">
      <action name="GoToDesktop">
        <to>3</to>
      </action>
    </keybind>
    <keybind key="W-F4">
      <action name="GoToDesktop">
        <to>4</to>
      </action>
    </keybind>
    <keybind key="W-d">
      <action name="ToggleShowDesktop"/>
    </keybind>
    <!-- Keybindings for windows -->
    <keybind key="A-F4">
      <action name="Close"/>
    </keybind>
    <keybind key="A-Escape">
      <action name="Lower"/>
      <action name="FocusToBottom"/>
      <action name="Unfocus"/>
    </keybind>
    <keybind key="A-space">
      <action name="ShowMenu">
        <menu>client-menu</menu>
      </action>
    </keybind>
    <!-- Take a screenshot of the current window with scrot when Alt+Print are pressed -->
    <keybind key="A-Print">
      <action name="Execute">
        <command>scrot -s</command>
      </action>
    </keybind>
    <!-- Keybindings for window switching -->
    <keybind key="A-Tab">
      <action name="NextWindow">
        <finalactions>
          <action name="Focus"/>
          <action name="Raise"/>
          <action name="Unshade"/>
        </finalactions>
      </action>
    </keybind>
    <keybind key="A-S-Tab">
      <action name="PreviousWindow">
        <finalactions>
          <action name="Focus"/>
          <action name="Raise"/>
          <action name="Unshade"/>
        </finalactions>
      </action>
    </keybind>
    <keybind key="C-A-Tab">
      <action name="NextWindow">
        <panels>yes</panels>
        <desktop>yes</desktop>
        <finalactions>
          <action name="Focus"/>
          <action name="Raise"/>
          <action name="Unshade"/>
        </finalactions>
      </action>
    </keybind>
    <!-- Keybindings for window switching with the arrow keys -->
    <keybind key="W-S-Right">
      <action name="DirectionalCycleWindows">
        <direction>right</direction>
      </action>
    </keybind>
    <keybind key="W-S-Left">
      <action name="DirectionalCycleWindows">
        <direction>left</direction>
      </action>
    </keybind>
    <keybind key="W-S-Up">
      <action name="DirectionalCycleWindows">
        <direction>up</direction>
      </action>
    </keybind>
    <keybind key="W-S-Down">
      <action name="DirectionalCycleWindows">
        <direction>down</direction>
      </action>
    </keybind>
    <!-- Keybindings for running applications -->
    <keybind key="W-e">
      <action name="Execute">
        <startupnotify>
          <enabled>true</enabled>
          <name>Konqueror</name>
        </startupnotify>
        <command>kfmclient openProfile filemanagement</command>
      </action>
    </keybind>
    <!-- Launch scrot when Print is pressed -->
    <keybind key="Print">
      <action name="Execute">
        <command>scrot</command>
      </action>
    </keybind>
  </keyboard>
  <mouse>
    <dragThreshold>1</dragThreshold>
    <!-- number of pixels the mouse must move before a drag begins -->
    <doubleClickTime>500</doubleClickTime>
    <!-- in milliseconds (1000 = 1 second) -->
    <screenEdgeWarpTime>400</screenEdgeWarpTime>
    <!-- Time before changing desktops when the pointer touches the edge of the
       screen while moving a window, in milliseconds (1000 = 1 second).
       Set this to 0 to disable warping -->
    <screenEdgeWarpMouse>false</screenEdgeWarpMouse>
    <!-- Set this to TRUE to move the mouse pointer across the desktop when
       switching due to hitting the edge of the screen -->
    <context name="Frame">
      <mousebind button="A-Left" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
      </mousebind>
      <mousebind button="A-Left" action="Click">
        <action name="Unshade"/>
      </mousebind>
      <mousebind button="A-Left" action="Drag">
        <action name="Move"/>
      </mousebind>
      <mousebind button="A-Right" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
        <action name="Unshade"/>
      </mousebind>
      <mousebind button="A-Right" action="Drag">
        <action name="Resize"/>
      </mousebind>
      <mousebind button="A-Middle" action="Press">
        <action name="Lower"/>
        <action name="FocusToBottom"/>
        <action name="Unfocus"/>
      </mousebind>
      <mousebind button="A-Up" action="Click">
        <action name="GoToDesktop">
          <to>previous</to>
        </action>
      </mousebind>
      <mousebind button="A-Down" action="Click">
        <action name="GoToDesktop">
          <to>next</to>
        </action>
      </mousebind>
      <mousebind button="C-A-Up" action="Click">
        <action name="GoToDesktop">
          <to>previous</to>
        </action>
      </mousebind>
      <mousebind button="C-A-Down" action="Click">
        <action name="GoToDesktop">
          <to>next</to>
        </action>
      </mousebind>
      <mousebind button="A-S-Up" action="Click">
        <action name="SendToDesktop">
          <to>previous</to>
        </action>
      </mousebind>
      <mousebind button="A-S-Down" action="Click">
        <action name="SendToDesktop">
          <to>next</to>
        </action>
      </mousebind>
    </context>
    <context name="Titlebar">
      <mousebind button="Left" action="Drag">
        <action name="Move"/>
      </mousebind>
      <mousebind button="Left" action="DoubleClick">
        <action name="ToggleMaximize"/>
      </mousebind>
      <mousebind button="Up" action="Click">
        <action name="if">
          <shaded>no</shaded>
          <then>
            <action name="Shade"/>
            <action name="FocusToBottom"/>
            <action name="Unfocus"/>
            <action name="Lower"/>
          </then>
        </action>
      </mousebind>
      <mousebind button="Down" action="Click">
        <action name="if">
          <shaded>yes</shaded>
          <then>
            <action name="Unshade"/>
            <action name="Raise"/>
          </then>
        </action>
      </mousebind>
    </context>
    <context name="Titlebar Top Right Bottom Left TLCorner TRCorner BRCorner BLCorner">
      <mousebind button="Left" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
        <action name="Unshade"/>
      </mousebind>
      <mousebind button="Middle" action="Press">
        <action name="Lower"/>
        <action name="FocusToBottom"/>
        <action name="Unfocus"/>
      </mousebind>
      <mousebind button="Right" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
        <action name="ShowMenu">
          <menu>client-menu</menu>
        </action>
      </mousebind>
    </context>
    <context name="Top">
      <mousebind button="Left" action="Drag">
        <action name="Resize">
          <edge>top</edge>
        </action>
      </mousebind>
    </context>
    <context name="Left">
      <mousebind button="Left" action="Drag">
        <action name="Resize">
          <edge>left</edge>
        </action>
      </mousebind>
    </context>
    <context name="Right">
      <mousebind button="Left" action="Drag">
        <action name="Resize">
          <edge>right</edge>
        </action>
      </mousebind>
    </context>
    <context name="Bottom">
      <mousebind button="Left" action="Drag">
        <action name="Resize">
          <edge>bottom</edge>
        </action>
      </mousebind>
      <mousebind button="Right" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
        <action name="ShowMenu">
          <menu>client-menu</menu>
        </action>
      </mousebind>
    </context>
    <context name="TRCorner BRCorner TLCorner BLCorner">
      <mousebind button="Left" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
        <action name="Unshade"/>
      </mousebind>
      <mousebind button="Left" action="Drag">
        <action name="Resize"/>
      </mousebind>
    </context>
    <context name="Client">
      <mousebind button="Left" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
      </mousebind>
      <mousebind button="Middle" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
      </mousebind>
      <mousebind button="Right" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
      </mousebind>
    </context>
    <context name="Icon">
      <mousebind button="Left" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
        <action name="Unshade"/>
        <action name="ShowMenu">
          <menu>client-menu</menu>
        </action>
      </mousebind>
      <mousebind button="Right" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
        <action name="ShowMenu">
          <menu>client-menu</menu>
        </action>
      </mousebind>
    </context>
    <context name="AllDesktops">
      <mousebind button="Left" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
        <action name="Unshade"/>
      </mousebind>
      <mousebind button="Left" action="Click">
        <action name="ToggleOmnipresent"/>
      </mousebind>
    </context>
    <context name="Shade">
      <mousebind button="Left" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
      </mousebind>
      <mousebind button="Left" action="Click">
        <action name="ToggleShade"/>
      </mousebind>
    </context>
    <context name="Iconify">
      <mousebind button="Left" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
      </mousebind>
      <mousebind button="Left" action="Click">
        <action name="Iconify"/>
      </mousebind>
    </context>
    <context name="Maximize">
      <mousebind button="Left" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
        <action name="Unshade"/>
      </mousebind>
      <mousebind button="Middle" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
        <action name="Unshade"/>
      </mousebind>
      <mousebind button="Right" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
        <action name="Unshade"/>
      </mousebind>
      <mousebind button="Left" action="Click">
        <action name="ToggleMaximize"/>
      </mousebind>
      <mousebind button="Middle" action="Click">
        <action name="ToggleMaximize">
          <direction>vertical</direction>
        </action>
      </mousebind>
      <mousebind button="Right" action="Click">
        <action name="ToggleMaximize">
          <direction>horizontal</direction>
        </action>
      </mousebind>
    </context>
    <context name="Close">
      <mousebind button="Left" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
        <action name="Unshade"/>
      </mousebind>
      <mousebind button="Left" action="Click">
        <action name="Close"/>
      </mousebind>
    </context>
    <context name="Desktop">
      <mousebind button="Up" action="Click">
        <action name="GoToDesktop">
          <to>previous</to>
        </action>
      </mousebind>
      <mousebind button="Down" action="Click">
        <action name="GoToDesktop">
          <to>next</to>
        </action>
      </mousebind>
      <mousebind button="A-Up" action="Click">
        <action name="GoToDesktop">
          <to>previous</to>
        </action>
      </mousebind>
      <mousebind button="A-Down" action="Click">
        <action name="GoToDesktop">
          <to>next</to>
        </action>
      </mousebind>
      <mousebind button="C-A-Up" action="Click">
        <action name="GoToDesktop">
          <to>previous</to>
        </action>
      </mousebind>
      <mousebind button="C-A-Down" action="Click">
        <action name="GoToDesktop">
          <to>next</to>
        </action>
      </mousebind>
      <mousebind button="Left" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
      </mousebind>
      <mousebind button="Right" action="Press">
        <action name="Focus"/>
        <action name="Raise"/>
      </mousebind>
    </context>
    <context name="Root">
      <!-- Menus -->
      <mousebind button="Middle" action="Press">
        <action name="ShowMenu">
          <menu>client-list-combined-menu</menu>
        </action>
      </mousebind>
      <mousebind button="Right" action="Press">
        <action name="ShowMenu">
          <menu>root-menu</menu>
        </action>
      </mousebind>
    </context>
    <context name="MoveResize">
      <mousebind button="Up" action="Click">
        <action name="GoToDesktop">
          <to>previous</to>
        </action>
      </mousebind>
      <mousebind button="Down" action="Click">
        <action name="GoToDesktop">
          <to>next</to>
        </action>
      </mousebind>
      <mousebind button="A-Up" action="Click">
        <action name="GoToDesktop">
          <to>previous</to>
        </action>
      </mousebind>
      <mousebind button="A-Down" action="Click">
        <action name="GoToDesktop">
          <to>next</to>
        </action>
      </mousebind>
    </context>
  </mouse>
  <menu>
    <!-- You can specify more than one menu file in here and they are all loaded,
       just don't make menu ids clash or, well, it'll be kind of pointless -->
    <!-- default menu file (or custom one in $HOME/.config/openbox/) -->
    <!-- system menu files on Debian systems -->
    <file>/var/lib/openbox/debian-menu.xml</file>
    <file>menu.xml</file>
    <hideDelay>200</hideDelay>
    <!-- if a press-release lasts longer than this setting (in milliseconds), the
       menu is hidden again -->
    <middle>no</middle>
    <!-- center submenus vertically about the parent entry -->
    <submenuShowDelay>100</submenuShowDelay>
    <!-- time to delay before showing a submenu after hovering over the parent
       entry.
       if this is a negative value, then the delay is infinite and the
       submenu will not be shown until it is clicked on -->
    <submenuHideDelay>400</submenuHideDelay>
    <!-- time to delay before hiding a submenu when selecting another
       entry in parent menu
       if this is a negative value, then the delay is infinite and the
       submenu will not be hidden until a different submenu is opened -->
    <showIcons>yes</showIcons>
    <!-- controls if icons appear in the client-list-(combined-)menu -->
    <manageDesktops>yes</manageDesktops>
    <!-- show the manage desktops section in the client-list-(combined-)menu -->
  </menu>
  <applications>
    <!--
  # this is an example with comments through out. use these to make your
  # own rules, but without the comments of course.
  # you may use one or more of the name/class/role/title/type rules to specify
  # windows to match

  <application name="the window's _OB_APP_NAME property (see obxprop)"
              class="the window's _OB_APP_CLASS property (see obxprop)"
          groupname="the window's _OB_APP_GROUP_NAME property (see obxprop)"
         groupclass="the window's _OB_APP_GROUP_CLASS property (see obxprop)"
               role="the window's _OB_APP_ROLE property (see obxprop)"
              title="the window's _OB_APP_TITLE property (see obxprop)"
               type="the window's _OB_APP_TYPE property (see obxprob)..
                      (if unspecified, then it is 'dialog' for child windows)">
  # you may set only one of name/class/role/title/type, or you may use more
  # than one together to restrict your matches.

  # the name, class, role, and title use simple wildcard matching such as those
  # used by a shell. you can use * to match any characters and ? to match
  # any single character.

  # the type is one of: normal, dialog, splash, utility, menu, toolbar, dock,
  #    or desktop

  # when multiple rules match a window, they will all be applied, in the
  # order that they appear in this list


    # each rule element can be left out or set to 'default' to specify to not
    # change that attribute of the window

    <decor>yes</decor>
    # enable or disable window decorations

    <shade>no</shade>
    # make the window shaded when it appears, or not

    <position force="no">
      # the position is only used if both an x and y coordinate are provided
      # (and not set to 'default')
      # when force is "yes", then the window will be placed here even if it
      # says you want it placed elsewhere.  this is to override buggy
      # applications who refuse to behave
      <x>center</x>
      # a number like 50, or 'center' to center on screen. use a negative number
      # to start from the right (or bottom for <y>), ie -50 is 50 pixels from
      # the right edge (or bottom). use 'default' to specify using value
      # provided by the application, or chosen by openbox, instead.
      <y>200</y>
      <monitor>1</monitor>
      # specifies the monitor in a xinerama setup.
      # 1 is the first head, or 'mouse' for wherever the mouse is
    </position>

    <size>
      # the size to make the window.
      <width>20</width>
      # a number like 20, or 'default' to use the size given by the application.
      # you can use fractions such as 1/2 or percentages such as 75% in which
      # case the value is relative to the size of the monitor that the window
      # appears on.
      <height>30%</height>
    </size>

    <focus>yes</focus>
    # if the window should try be given focus when it appears. if this is set
    # to yes it doesn't guarantee the window will be given focus. some
    # restrictions may apply, but Openbox will try to

    <desktop>1</desktop>
    # 1 is the first desktop, 'all' for all desktops

    <layer>normal</layer>
    # 'above', 'normal', or 'below'

    <iconic>no</iconic>
    # make the window iconified when it appears, or not

    <skip_pager>no</skip_pager>
    # asks to not be shown in pagers

    <skip_taskbar>no</skip_taskbar>
    # asks to not be shown in taskbars. window cycling actions will also
    # skip past such windows

    <fullscreen>yes</fullscreen>
    # make the window in fullscreen mode when it appears

    <maximized>true</maximized>
    # 'Horizontal', 'Vertical' or boolean (yes/no)
  </application>

  # end of the example
-->
  </applications>
</openbox_config>

eof

#========================================
#        ~/.config/openbox/menu.xml
#========================================

  cat <<'eof' > ~/.config/openbox/menu.xml

<?xml version="1.0" encoding="utf-8"?>
<openbox_menu xmlns="http://openbox.org/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://openbox.org/                 file:///usr/share/openbox/menu.xsd">
  <menu id="root-menu" label="menu">
    <menu id="root-menu-67854" label="application">
      <menu id="root-menu-67854-4696" label="browser">
        <item label="firefox">
          <action name="Execute">
            <execute>firefox</execute>
          </action>
        </item>
        <item label="chromium">
          <action name="Execute">
            <execute>chromium</execute>
          </action>
        </item>
      </menu>
      <menu id="root-menu-67854-151041" label="openbox">
        <item label="q-keyboard">
          <action name="Execute">
            <execute>setxkbmap -layout tr</execute>
          </action>
        </item>
        <item label="f-keyboard">
          <action name="Execute">
            <execute>setxkbmap -layout tr f</execute>
          </action>
        </item>
        <item label="tint2">
          <action name="Execute">
            <execute>tint2</execute>
          </action>
        </item>
        <separator/>
        <item label="obmenu">
          <action name="Execute">
            <execute>obmenu</execute>
          </action>
        </item>
        <item label="obconf">
          <action name="Execute">
            <execute>obconf</execute>
          </action>
        </item>
        <separator/>
        <item label="restart">
          <action name="Restart"/>
        </item>
        <item label="reconfigure">
          <action name="Reconfigure"/>
        </item>
        <item label="exit">
          <action name="Exit"/>
        </item>
      </menu>
      <menu id="root-menu-67854-11033" label="terminal">
        <item label="xterm">
          <action name="Execute">
            <execute>xterm</execute>
          </action>
        </item>
      </menu>
    </menu>
    <menu id="root-menu-215849" label="browser">
      <item label="firefox">
        <action name="Execute">
          <execute>firefox</execute>
        </action>
      </item>
      <item label="firefox-esr">
        <action name="Execute">
          <execute>firefox-esr</execute>
        </action>
      </item>
      <item label="chromium">
        <action name="Execute">
          <execute>chromium</execute>
        </action>
      </item>
    </menu>
    <menu id="root-menu-885824" label="terminal">
      <item label="xterm">
        <action name="Execute">
          <execute>xterm</execute>
        </action>
      </item>
      <item label="xfce4-terminal">
        <action name="Execute">
          <execute>xfce4-terminal</execute>
        </action>
      </item>
    </menu>
    <separator/>
    <item label="q keyboard">
      <action name="Execute">
        <execute>setxkbmap -layout tr</execute>
      </action>
    </item>
    <item label="f keyboard">
      <action name="Execute">
        <execute>setxkbmap -layout tr f</execute>
      </action>
    </item>
    <separator/>
    <!-- This requires the presence of the 'obamenu' package to work -->
    <menu execute="/usr/bin/obamenu" id="applications-menu" label="applications"/>
    <separator/>
    <item label="reconfigure">
      <action name="Reconfigure"/>
    </item>
    <item label="restart">
      <action name="Restart"/>
    </item>
    <item label="exit">
      <action name="Exit"/>
    </item>
  </menu>
</openbox_menu>

eof

#========================================
#        ~/.config/openbox/autostart
#========================================
  cat <<'eof' > ~/.config/openbox/autostart
xrandr --output Virtual-1 --mode 1360x768
tint2 &
eof

#========================================
#        ~/.config/tint2/tint2rc
#========================================
mkdir -p ~/.config/tint2/
  cat <<'eof' > ~/.config/tint2/tint2rc

#---- Generated by tint2conf c6f2 ----
# See https://gitlab.com/o9000/tint2/wikis/Configure for
# full documentation of the configuration options.
#-------------------------------------
# Gradients
#-------------------------------------
# Backgrounds
# Background 1: Panel
rounded = 0
border_width = 0
border_sides = TBLR
border_content_tint_weight = 0
background_content_tint_weight = 0
background_color = #333333 60
border_color = #000000 30
background_color_hover = #000000 60
border_color_hover = #000000 30
background_color_pressed = #000000 60
border_color_pressed = #000000 30

# Background 2: Default task, Iconified task
rounded = 4
border_width = 1
border_sides = TBLR
border_content_tint_weight = 0
background_content_tint_weight = 0
background_color = #777777 20
border_color = #777777 30
background_color_hover = #aaaaaa 22
border_color_hover = #eaeaea 44
background_color_pressed = #555555 4
border_color_pressed = #eaeaea 44

# Background 3: Active task
rounded = 4
border_width = 1
border_sides = TBLR
border_content_tint_weight = 0
background_content_tint_weight = 0
background_color = #777777 20
border_color = #ffffff 40
background_color_hover = #aaaaaa 22
border_color_hover = #eaeaea 44
background_color_pressed = #555555 4
border_color_pressed = #eaeaea 44

# Background 4: Urgent task
rounded = 4
border_width = 1
border_sides = TBLR
border_content_tint_weight = 0
background_content_tint_weight = 0
background_color = #aa4400 100
border_color = #aa7733 100
background_color_hover = #cc7700 100
border_color_hover = #aa7733 100
background_color_pressed = #555555 4
border_color_pressed = #aa7733 100

# Background 5: Tooltip
rounded = 1
border_width = 1
border_sides = TBLR
border_content_tint_weight = 0
background_content_tint_weight = 0
background_color = #222222 100
border_color = #333333 100
background_color_hover = #ffffaa 100
border_color_hover = #000000 100
background_color_pressed = #ffffaa 100
border_color_pressed = #000000 100

#-------------------------------------
# Panel
panel_items = TS
panel_size = 100% 30
panel_margin = 0 0
panel_padding = 2 0 2
panel_background_id = 1
wm_menu = 1
panel_dock = 0
panel_pivot_struts = 0
panel_position = bottom center horizontal
panel_layer = top
panel_monitor = all
panel_shrink = 0
autohide = 0
autohide_show_timeout = 0
autohide_hide_timeout = 0.5
autohide_height = 2
strut_policy = follow_size
panel_window_name = tint2
disable_transparency = 1
mouse_effects = 1
font_shadow = 0
mouse_hover_icon_asb = 100 0 10
mouse_pressed_icon_asb = 100 0 0
scale_relative_to_dpi = 0
scale_relative_to_screen_height = 0

#-------------------------------------
# Taskbar
taskbar_mode = single_desktop
taskbar_hide_if_empty = 0
taskbar_padding = 0 0 2
taskbar_background_id = 0
taskbar_active_background_id = 0
taskbar_name = 0
taskbar_hide_inactive_tasks = 0
taskbar_hide_different_monitor = 0
taskbar_hide_different_desktop = 0
taskbar_always_show_all_desktop_tasks = 0
taskbar_name_padding = 4 2
taskbar_name_background_id = 0
taskbar_name_active_background_id = 0
taskbar_name_font_color = #e3e3e3 100
taskbar_name_active_font_color = #ffffff 100
taskbar_distribute_size = 0
taskbar_sort_order = none
task_align = left

#-------------------------------------
# Task
task_text = 1
task_icon = 1
task_centered = 1
urgent_nb_of_blink = 100000
task_maximum_size = 150 35
task_padding = 2 2 4
task_font = Monospace 10
task_tooltip = 1
task_thumbnail = 0
task_thumbnail_size = 210
task_font_color = #ffffff 100
task_background_id = 2
task_active_background_id = 3
task_urgent_background_id = 4
task_iconified_background_id = 2
mouse_left = toggle_iconify
mouse_middle = none
mouse_right = close
mouse_scroll_up = toggle
mouse_scroll_down = iconify

#-------------------------------------
# System tray (notification area)
systray_padding = 0 4 2
systray_background_id = 0
systray_sort = ascending
systray_icon_size = 24
systray_icon_asb = 100 0 0
systray_monitor = 1
systray_name_filter =

#-------------------------------------
# Launcher
launcher_padding = 2 4 2
launcher_background_id = 0
launcher_icon_background_id = 0
launcher_icon_size = 24
launcher_icon_asb = 100 0 0
launcher_icon_theme_override = 0
startup_notifications = 1
launcher_tooltip = 1
launcher_item_app = tint2conf.desktop
launcher_item_app = firefox.desktop
launcher_item_app = iceweasel.desktop
launcher_item_app = chromium-browser.desktop
launcher_item_app = google-chrome.desktop

#-------------------------------------
# Clock
time1_format =
time2_format =
time1_timezone =
time2_timezone =
clock_font_color = #ffffff 100
clock_padding = 2 0
clock_background_id = 0
clock_tooltip =
clock_tooltip_timezone =
clock_lclick_command =
clock_rclick_command = orage
clock_mclick_command =
clock_uwheel_command =
clock_dwheel_command =

#-------------------------------------
# Battery
battery_tooltip = 1
battery_low_status = 10
battery_low_cmd = xmessage 'tint2: Battery low!'
battery_full_cmd =
battery_font_color = #ffffff 100
bat1_format =
bat2_format =
battery_padding = 1 0
battery_background_id = 0
battery_hide = 101
battery_lclick_command =
battery_rclick_command =
battery_mclick_command =
battery_uwheel_command =
battery_dwheel_command =
ac_connected_cmd =
ac_disconnected_cmd =

#-------------------------------------
# Tooltip
tooltip_show_timeout = 0.5
tooltip_hide_timeout = 0.1
tooltip_padding = 4 4
tooltip_background_id = 5
tooltip_font_color = #dddddd 100

eof

# end of server_openbox

}

debian_apt_sources_list() {

  cat <<'eof' > /etc/apt/sources.list
# experimental
deb      http://ftp.debian.org/debian/ experimental main contrib non-free
#deb-src http://ftp.debian.org/debian/ experimental main contrib non-free


# unstable (sid)
deb      http://ftp.debian.org/debian/ unstable main contrib non-free
#deb-src http://ftp.debian.org/debian/ unstable main contrib non-free


# testing (bookworm)
deb      http://ftp.debian.org/debian/ testing main contrib non-free
#deb-src http://ftp.debian.org/debian/ testing main contrib non-free

deb      http://ftp.debian.org/debian/ testing-updates main contrib non-free
#deb-src http://ftp.debian.org/debian/ testing-updates main contrib non-free

deb      http://security.debian.org/ testing-security main contrib non-free
#deb-src http://security.debian.org/ testing-security main contrib non-free


# stable (bullseye)
deb      http://ftp.debian.org/debian/ stable main contrib non-free
#deb-src http://ftp.debian.org/debian/ stable main contrib non-free

deb      http://ftp.debian.org/debian/ stable-updates main contrib non-free
#deb-src http://ftp.debian.org/debian/ stable-updates main contrib non-free

deb      http://security.debian.org/debian-security/ stable-security main contrib non-free
#deb-src http://security.debian.org/debian-security/ stable-security main contrib non-free

deb      http://ftp.debian.org/debian/ bullseye-backports main contrib non-free
#deb-src http://ftp.debian.org/debian/ bullseye-backports main contrib non-free


# oldstable (buster)
deb      http://ftp.debian.org/debian/ oldstable main contrib non-free
#deb-src http://ftp.debian.org/debian/ oldstable main contrib non-free

deb      http://ftp.debian.org/debian/ oldstable-updates main contrib non-free
#deb-src http://ftp.debian.org/debian/ oldstable-updates main contrib non-free

deb      http://security.debian.org/debian-security/ oldstable/updates main contrib non-free
#deb-src http://security.debian.org/debian-security/ oldstable/updates main contrib non-free

deb      http://ftp.debian.org/debian/ buster-backports main contrib non-free
#deb-src http://ftp.debian.org/debian/ buster-backports main contrib non-free


# oldoldstable (stretch)
deb      http://ftp.debian.org/debian/ oldoldstable main contrib non-free
#deb-src http://ftp.debian.org/debian/ oldoldstable main contrib non-free

deb      http://ftp.debian.org/debian/ oldoldstable-updates main contrib non-free
#deb-src http://ftp.debian.org/debian/ oldoldstable-updates main contrib non-free

deb      http://security.debian.org/debian-security/ oldoldstable/updates main contrib non-free
#deb-src http://security.debian.org/debian-security/ oldoldstable/updates main contrib non-free

eof

}

debian_apt_pin_stable() {

  cat <<'eof' > /etc/apt/preferences.d/50-pin
package: *
pin: release a=unstable
pin-priority: 500

package: *
pin: release a=testing
pin-priority: 501

package: *
pin: release a=stable
pin-priority: 504

package: *
pin: release a=oldstable
pin-priority: 503

package: *
pin: release a=oldoldstable
pin-priority: 502

eof
}

debian_apt_pin_testing() {

  cat <<'eof' > /etc/apt/preferences.d/50-pin
package: *
pin: release a=experimental
pin-priority: 500

package: *
pin: release a=unstable
pin-priority: 504

package: *
pin: release a=testing
pin-priority: 505

package: *
pin: release a=stable
pin-priority: 503

package: *
pin: release a=oldstable
pin-priority: 502

package: *
pin: release a=oldoldstable
pin-priority: 501

eof

}

debian_apt_pin_unstable() {

  cat <<'eof' > /etc/apt/preferences.d/50-pin
package: *
pin: release a=experimental
pin-priority: 500

package: *
pin: release a=unstable
pin-priority: 505

package: *
pin: release a=testing
pin-priority: 504

package: *
pin: release a=stable
pin-priority: 503

package: *
pin: release a=oldstable
pin-priority: 502

package: *
pin: release a=oldoldstable
pin-priority: 501

eof

}

debian_keyboard_turkish_f_turkish_q() {
  # first turkish f, then turkish q layout
  sed -i 's/.*XKBLAYOUT.*/XKBLAYOUT="tr,tr,us"/' /etc/default/keyboard
  sed -i 's/.*XKBVARIANT.*/XKBVARIANT="f,,"/' /etc/default/keyboard
}


debian_keyboard_turkish_q_turkish_f() {
  # first turkish q, then turkish f layout
  sed -i 's/.*XKBLAYOUT.*/XKBLAYOUT="tr,tr,us"/' /etc/default/keyboard
  sed -i 's/.*XKBVARIANT.*/XKBVARIANT=",f,"/' /etc/default/keyboard
}

grub_configure() {
  # usage:
  # grub_configure language
  # grub_configure tr
  # grub_configure en
  
  # disable debian theming
  chmod -x /etc/grub.d/05_debian_theme
  
  # disable log messages while opening pc
  sed -i 's/.*GRUB_CMDLINE_LINUX_DEFAULT.*/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/' /etc/default/grub
  
  if [ $1 = "tr" ]; then
    cat <<'eof' > /boot/grub/custom.cfg
menuentry "bilgisayari yeniden baslat" {
  reboot
}

menuentry "bilgisayari kapat" {
  halt
}
eof
  else
    cat <<'eof' > /boot/grub/custom.cfg
menuentry "restart" {
  reboot
}

menuentry "power off" {
  halt
}
eof
  fi
    
    

}

#========================================
#               functions end
#========================================

main
