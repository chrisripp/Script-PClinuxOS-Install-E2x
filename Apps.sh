# Author: Chrisripp / Triki1

## Folder APPS
mkdir Sources-E/APPS
cd APPS
## CLONE GIT
#GEANY
 git clone https://git.enlightenment.org/editors/geany-configs.git
# EXTRAMENU
 git clone https://git.enlightenment.org/enlightenment/modules/extramenu.git
 # ENVENTOR
 git clone https://git.enlightenment.org/tools/enventor.git
 # RAGE
 git clone https://git.enlightenment.org/apps/rage.git
 #EVISIUM
 git clone https://git.enlightenment.org/apps/evisum.git
 # PENGUINS
 git clone https://git.enlightenment.org/enlightenment/modules/penguins.git
 # DESKANITY
 git clone https://git.enlightenment.org/enlightenment/modules/desksanity.git
 #SNOW
 git clone https://git.enlightenment.org/devs/ajwillia-ms/snow.git
 #FLAME
 git clone https://git.enlightenment.org/devs/ajwillia-ms/flame.git
 # WALLPAPER2
 #git clone https://git.enlightenment.org/enlightenment/modules/wallpaper2.git
 # EPHOTO
 git clone https://git.enlightenment.org/apps/ephoto.git
 Illume2
 git clone https://git.enlightenment.org/devs/zmike/e_module-illume2.git
 ## Compil extramenu
 export PKG_CONFIG_PATH=/usr/local/lib64/pkgconfig
 cd extramenu
 ./autogen.sh
 make
 su -c "make install"
 cd ..
# ENVENTOR
cd enventor
./autogen.sh
 make
 su -c "make install"
 su -c "ldconfig" 
cd ..
#EPHOTO
cd ephoto
meson  . build
ninja -C build
su -c "ninja -C build install"
su -c "ldconfig" 
cd..
#EVISIUM
cd evisium
meson  . build
ninja -C build
su -c "ninja -C build install"
su -c "ldconfig" 
cd ..
#PENGUINS
cd enventor
./autogen.sh
 make
 su -c "make install"
 su -c "ldconfig" 
cd ..
#DESKANITY
cd deskanity
meson  . build
ninja -C build
su -c "ninja -C build install"
cd ..
#SNOW 
cd snow
./autogen.sh
 make
 su -c "make install"
cd ..
#FLAME
cd flame
./autogen.sh
 make
 su -c "make install"
cd ..
#WALLPAPER2
cd enventor
./autogen.sh
 make
 su -c "make install"
 cd ..

 

