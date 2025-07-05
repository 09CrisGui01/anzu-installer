#!/usr/bin/env bash

# anzu-installer: Script to customise a fresh Arch Linux installation.
# Copyright (C) 2025  Cristian Guilarte
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
# 
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# ANSI 16 Colors 
## Foreground
FgBlack='\x1b[30m'
FgRed='\x1b[31m'
FgGreen='\x1b[32m'
FgYellow='\x1b[33m'
FgBlue='\x1b[34m'
FgMagenta='\x1b[35m'
FgCyan='\x1b[36m'
FgWhite='\x1b[37m'

FgBrightBlack='\x1b[90m'
FgBrightRed='\x1b[91m' 	
FgBrightGreen='\x1b[92m' 	
FgBrightYellow='\x1b[93m' 	
FgBrightBlue='\x1b[94m' 	
FgBrightMagenta='\x1b[95m' 	
FgBrightCyan='\x1b[96m' 	
FgBrightWhite='\x1b[97m' 	

FgDefault='\x1b[39m'

## Background
BgBlack='\x1b[40m'
BgRed='\x1b[41m'
BgGreen='\x1b[42m'
BgYellow='\x1b[43m'
BgBlue='\x1b[44m'
BgMagenta='\x1b[45m'
BgCyan='\x1b[46m'
BgWhite='\x1b[47m'

BgBrightBlack='\x1b[100m'
BgBrightRed='\x1b[101m'
BgBrightGreen='\x1b[102m'
BgBrightYellow='\x1b[103m'
BgBrightBlue='\x1b[104m'
BgBrightMagenta='\x1b[105m'
BgBrightCyan='\x1b[106m'
BgBrightWhite='\x1b[107m'

BgDefault='\x1b[49m'

Reset='\x1b[0m'
Bold='\x1b[1m'
Dim='\x1b[2m'
Italic='\x1b[3m'
Underline='\x1b[4m'
Blinking='\x1b[5m'
Inverse='\x1b[7m'
Hidden='\x1b[8m'
Strikethrough='\x1b[9m'

PACKAGES_OFFICIAL=(
        # System
        'archlinux-keyrings' 'plymouth' 'linux' 'linux-lts' 'linux-firmware'
        'linux-headers' 'linux-lts-headers' 'intel-ucode' 'intel-undervolt'
        'intel-gpu-tools' 'apparmor' 'cmake' 'make' 'base' 'base-devel' 
        'man-db' 'man-pages' 'sudo'

        # Drivers
        'mesa' 'vulkan-mesa-layer' 'vulkan-intel' 'vulkan-headers' 
        'vulkan-tools' 'libva' 'libva-utils' 'libva-intel-driver'
        'intel-media-driver'

        # Compress
        'tar' 'bzip2' 'bzip3' 'gzip' '7zip' 'unrar' 'zip' 'unzip' 'unarchiver'

        # Codecs
        'flac' 'wavpack' 'a52dec' 'libmad' 'lame' 'libmpcdec' 'opus' 'aom'
        'libvorbis' 'libdca' 'faac' 'faad2' 'jasper' 'libwebp' 'libavif'
        'libheif' 'libjxl' 'aom' 'dav1d' 'rav1e' 'schroedinger' 'x265' 'x264'
        'libtheora' 'libvpx' 'xvidcore' 'libmpeg2' 'gst-libav' 'gstreamer'
        'gst-plugins-bad' 'gst-plugins-good' 'gst-plugins-base'
        'gst-plugins-ugly' 'gst-plugins-good' 'gst-plugin-pipewire' 
        'gst-plugin-va' 'ffmpeg' 

        # Audio
        'pipewire' 'wireplumber' 'pipewire-audio' 'pipewire-alsa' 'alsa-oss'
        'pipewire-pulse' 'pipewire-jack' 'alsa-firmware' 'alsa-utils'
        'alsa-plugins' 'alsa-tools'

        # Power
        'acpid'

        # Pacman
        'pacman-contrib' 'reflector'

        # Network
        'bluez' 'bluez-tools' 'bluez-cups' 'cups' 'cups-pdf' 'foomatic-db'
        'foomatic-db-ppds' 'foomatic-db-nonfree' 'foomatic-db-nonfree-ppds'
        'networkmanager' 'iptables' 'wpa_supplicant' 'dhcpcd'

        # Wayland
        'xorg-xwayland' 'wayland' 'xdg-utils' 'xdg-user-dirs' 
        'xdg-desktop-portal' 'xdg-desktop-portal-wlr'

        # SwayWM
        'sway' 'swaybg' 'swayidle' 'swayimg' 'sway-contrib' 'brightnessctl'
        'mako' 'wl-clipboard' 'kanshi' 'wlsunset' 'grim' 'slurp'

        # Tools
        'neovim' 'tmux' 'fzf' 'alacritty' 'bat' 'bash-completion' 'yazi' 'git'
        'bash-complete-alias' 'starship' 'premake' 'btop'

        # Flatpak
        'flatpak' 'flatpak-xdg-utils'

        # Fonts
        'gnu-free-fonts' 'noto-fonts' 'ttf-roboto' 'ttf-droid' 'otf-fira-mono'
        'ttf-fira-code' 'otf-hermit' 'ttf-roboto-mono' 'otf-fira-sans'
        'adobe-source-code-pro-fonts' 'inter-font' 'ttf-opensans' 'nerd-fonts'
        'adobe-source-sans-fonts' 'ttf-font-awesome'
)

PACKAGES_AUR=(
        # Power
        'laptop-mode-tools'

        # Codecs
        'ffmpeg-full'

        # Fonts
        'ttf-meslo'
)

PACKAGES_CHAOTIC=(
        # Pacman
        'yay'

        # Theme
        'catppuccin-cursors-mocha'
)
