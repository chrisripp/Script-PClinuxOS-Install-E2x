# Author: Chrisripp / Triki1

## Folder APPS
cd Sources-E
mkdir APPS
cd APPS
## CLONE GIT
#GEANY
# git clone https://git.enlightenment.org/editors/geany-configs.git
 # EXTRAMENU
 git clone http://git.enlightenment.org/enlightenment/enlightenment-module-extramenu.git
 
# ENVENTOR
 git clone http://git.enlightenment.org/enlightenment/enventor.git
 
# RAGE
 git clone http://git.enlightenment.org/enlightenment/rage.git
 
#EPHOTO
 git clone http://git.enlightenment.org/enlightenment/ephoto.git
 
#EVISUM
 git clone http://git.enlightenment.org/enlightenment/evisum.git
 
# PENGUINS
 git clone http://git.enlightenment.org/enlightenment/enlightenment-module-penguins.git
 
# DESKANITY
 git clone http://git.enlightenment.org/enlightenment/enlightenment-module-desksanity.git
 
#ERULER
 git clone http://git.enlightenment.org/enlightenment/eruler.git
 
#EDGAR
 git clone http://git.enlightenment.org/enlightenment/enlightenment-module-edgar.git
 
#PLACES 
 git clone http://git.enlightenment.org/enlightenment/enlightenment-module-places.git
 
#PYTHON-EFL
 git clone http://git.enlightenment.org/enlightenment/python-efl.git
  
# WALLPAPER2
 git clone http://git.enlightenment.org/enlightenment/enlightenment-module-wallpaper2.git
 
## Compil extramenu
 export PKG_CONFIG_PATH=/usr/local/lib64/pkgconfig
 cd enlightenment-module-extramenu
 meson  . build
 ninja -C build
 su -c "ninja -C build install"
 su -c "ldconfig" 
 cd ..
# ENVENTOR
cd enventor
./autogen.sh
 make
 su -c "make install"
 su -c "ldconfig" 
cd ..
#RAGE
cd rage
meson  . build
ninja -C build
su -c "ninja -C build install"
su -c "ldconfig" 
cd ..
#EPHOTO
cd ephoto
meson  . build
ninja -C build
su -c "ninja -C build install"
su -c "ldconfig" 
cd ..
#EVISUM
cd evisum
meson  . build
ninja -C build
su -c "ninja -C build install"
su -c "ldconfig" 
cd ..
#PENGUINS
cd enlightenment-module-penguins
meson  . build
ninja -C build
su -c "ninja -C build install"
su -c "ldconfig" 
cd ..
#DESKANITY
cd enlightenment-module-desksanity
meson  . build
ninja -C build
su -c "ninja -C build install"
cd ..
#ERULER
cd eruler
meson  . build
ninja -C build
su -c "ninja -C build install"
su -c "ldconfig" 
 cd ..
#EDGAR
cd enlightenment-module-edgar
meson  . build
ninja -C build
su -c "ninja -C build install"
su -c "ldconfig" 
cd ..
#PLACES
cd enlightenment-module-places
meson  . build
ninja -C build
su -c "ninja -C build install"
su -c "ldconfig" 
cd ..
#WALLPAPER2
cd enlightenment-module-wallpaper2
meson  . build
ninja -C build
su -c "ninja -C build install"
su -c "ldconfig" 
cd ..
#PYTHON-EFL
cd python-efl
pip install python-efl
cd ..

 

