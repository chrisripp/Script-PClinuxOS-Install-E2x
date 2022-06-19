# Author: Chrisripp / Triki1
# Script for PCLINUXOS
## Install all necessary libraries:


echo "script E23 for PCLINUXOS"
su -c "apt-get --no-reinstall -y install build-essentials mc git autoconf checkinstall \
lib64check-devel lib64check0 cmake meson ninja pkgconfig \
lib64glib2.0-devel lib64harfbuzz-devel doxygen lib64sdl2.0_0 lib64fribidi-devel \
lib64alsa2-devel glibc-devel  lib64curl-devel  lib64dbus-1-devel \
lib64fontconfig-devel  lib64freetype6-devel lib64gif-devel  lib64gstreamer1.0-devel \
lib64jpeg-devel lib64png-devel lib64poppler-devel lib64poppler-cpp-devel LibRaw LibRaw-devel \
lib64rsvg2_2 lib64rsvg2-devel lib64spectre1 lib64spectre-devel \
lib64openssl-devel lib64tiff-devel lib64udev0-devel vlc-devel \
lib64x11-devel libxcb-devel lib64xcb-util-devel lib64xcomposite1 lib64xcomposite-devel \
lib64xcursor1 lib64xcursor-devel lib64xdamage1 lib64xdamage-devel \
lib64xext6 lib64xext-devel lib64xfixes3 lib64xfixes-devel lib64xine2 lib64xine1.2-devel \
lib64xinerama1 lib64xinerama-devel lib64xkbfile1 lib64xkbfile-devel \
lib64xp6 lib64xp-devel lib64xrandr2 libxrandr-devel lib64xrender1 lib64xrender-devel \
lua5.2 luajit-devel zlib1  zlib1-devel lib64gstbasevideo-devel lib64gstreamer-plugins-base1.0_0 \
lib64gstvdp0.10_0 lib64ogg-devel lib64mount-devel lib64blkid-devel lib64sndfile-devel \
x11-proto-devel lib64xtst-devel lib64bullet-devel libtool libtool-base \
lib64gnutls-devel lib64webp7 lib64webp-devel lib64xscrnsaver-devel lib64xscrnsaver1 \
aspell ccache gstreamer1.0-libav lib64gstreamer-plugins-base1.0-devel gstreamer1.0-plugins-bad gstreamer1.0-plugins-good \
gstreamer1.0-plugins-ugly ImageMagick lib64avahi-client-devel lib64bluez-devel \
lib64exif12-devel lib64geoclue2-devel lib64ibus1.0_5 lib64input-devel \
lz4-devel lib64openjpeg-devel lib64pam-devel lib64pulseaudio-devel scim-devel \
lib64unibreak-devel lib64unwind-devel lib64xcb-util-keysyms-devel lib64xkbcommon-devel \
python3-setuptools python3-wheel valgrind wmctrl x11-server-xephyr python3-pip libpthread-stubs"

## PATH / Flag for duilding:
export PATH=/usr/bin:"$PATH"
export PKG_CONFIG_PATH=/usr/lib64/pkgconfig:"$PKG_CONFIG_PATH"
export LD_LIBRARY_PATH=/usr/lib64:"$LD_LIBRARY_PATH"
export CFLAGS="-O3 -ffast-math -march=native"

## Folder Sources-E
mkdir Sources-E
cd Sources-E
## CLONE GIT
git clone http://git.enlightenment.org/enlightenment/efl.git
git clone http://git.enlightenment.org/enlightenment/enlightenment.git
git clone http://git.enlightenment.org/enlightenment/terminology.git
## Compil EFL
## YOU NEED Pulseaudio SHIT or not
## -Dpulseaudio=false -Davahi=false
cd efl
meson --prefix=/usr -Dsystemd=false . build
ninja -C build
su -c "ninja -C build install"
su -c "ldconfig" 
cd ..
## Compil Enlightenment
## You need to disable PAM here? Dunno. -Dpam=false in case?
## -Dpulseaudio=false -Davahi=false
cd enlightenment
meson --prefix=/usr -Dsystemd=false . build
ninja -C build
su -c "ninja -C build install"
su -c "ldconfig" 
cd ..
## Compil Terminology
cd terminology
meson  . build
ninja -C build
su -c "ninja -C build install"
su -c "ldconfig" 
cd ..
cd ..

echo "End. You can test it"
