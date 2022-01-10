#!/usr/bin/env bash
# Dialog Dimensions:
HEIGHT=15
WIDTH=55
CHOICE_HEIGHT=10

MENU=""

 



  TITLE="Instalador MXE UBUNTU"
 
  
 
	
 
 
 
 OPTIONS=(1 "Instalar MXE 64bits e 32bits"  
      2 "Instalar MXE 64bits"  
      3 "Instalar MXE 32bits"  
      4 "Compilar Attract-Mode Windows 32bits"  
      5 "Compilar Attract-Mode Windows 32bits console"  
      6 "Compilar Attract-Mode Windows 64bits"  
      7 "Compilar Attract-Mode Windows 64bits console"  
  )

CHOICE=$(dialog --clear --backtitle "$TITLE" --title "Menu" --menu "Seu Sistema é $(file /bin/bash | cut -d' ' -f3)!" $HEIGHT $WIDTH $CHOICE_HEIGHT "${OPTIONS[@]}" 2>&1 >/dev/tty)
 


case $CHOICE in
 
            
      "1") 
      
 clear     
 echo "instalando dependencias"
# - 1
sudo apt-get install \
    autoconf \
    automake \
    autopoint \
    bash \
    bison \
    bzip2 \
    flex \
    g++ \
    g++-multilib \
    gettext \
    git \
    gperf \
    intltool \
    libc6-dev-i386 \
    libgdk-pixbuf2.0-dev \
    libltdl-dev \
    libssl-dev \
    libtool-bin \
    libxml-parser-perl \
    lzip \
    make \
    openssl \
    p7zip-full \
    patch \
    perl \
    python \
    ruby \
    sed \
    unzip \
    wget \
    xz-utils
    
# - 2
clear
echo "criando direretorio"
sleep 2
mkdir ~/mxe
# - 3   
cd ~/mxe
clear
echo "baixando mxe"
sleep 2
# - 4    
git clone https://github.com/mxe/mxe.git ~/mxe
# - 5   
clear
echo "compilando para 64 e 32 bits"  
sleep 3
make MXE_TARGETS='x86_64-w64-mingw32.static i686-w64-mingw32.static' ffmpeg sfml     
     ;;
     
     "2")
 clear     
 echo "instalando dependencias"
# - 1
sudo apt-get install \
    autoconf \
    automake \
    autopoint \
    bash \
    bison \
    bzip2 \
    flex \
    g++ \
    g++-multilib \
    gettext \
    git \
    gperf \
    intltool \
    libc6-dev-i386 \
    libgdk-pixbuf2.0-dev \
    libltdl-dev \
    libssl-dev \
    libtool-bin \
    libxml-parser-perl \
    lzip \
    make \
    openssl \
    p7zip-full \
    patch \
    perl \
    python \
    ruby \
    sed \
    unzip \
    wget \
    xz-utils
    
# - 2
clear
echo "criando direretorio"
sleep 2
mkdir ~/mxe
# - 3   
cd ~/mxe
clear
echo "baixando mxe"
sleep 2
# - 4    
git clone https://github.com/mxe/mxe.git ~/mxe
# - 5   
clear     
echo "compilando para 64bits"    
sleep 3  
 make MXE_TARGETS='x86_64-w64-mingw32.static' ffmpeg sfml      
      ;;
      
      
      "3") 
      
 clear     
 echo "instalando dependencias"
# - 1
sudo apt-get install \
    autoconf \
    automake \
    autopoint \
    bash \
    bison \
    bzip2 \
    flex \
    g++ \
    g++-multilib \
    gettext \
    git \
    gperf \
    intltool \
    libc6-dev-i386 \
    libgdk-pixbuf2.0-dev \
    libltdl-dev \
    libssl-dev \
    libtool-bin \
    libxml-parser-perl \
    lzip \
    make \
    openssl \
    p7zip-full \
    patch \
    perl \
    python \
    ruby \
    sed \
    unzip \
    wget \
    xz-utils
    
# - 2
clear
echo "criando direretorio"
sleep 2
mkdir ~/mxe
# - 3   
cd ~/mxe
clear
echo "baixando mxe"
sleep 2
# - 4    
git clone https://github.com/mxe/mxe.git ~/mxe
# - 5   
clear      
echo "compilando para 32 bits" 
sleep3      
 make MXE_TARGETS='i686-w64-mingw32.static' ffmpeg sfml     
      ;;




"4")
#!/bin/bash
export PATH=$PATH:/home/mxe/usr/bin
now=$(date +"%m_%d_%Y")
x86="attract-86_$now.exe"
git clone https://github.com/mickelson/attract attract-mode
cd attract-mode
make clean
make -j 6 CROSS=1 TOOLCHAIN=i686-w64-mingw32.static WINDOWS_STATIC=1
mv attract.exe $x86
make clean


"5")
#!/bin/bash
export PATH=$PATH:/home/mxe/usr/bin
now=$(date +"%m_%d_%Y")
x86c="attract-86console_$now.exe"
git clone https://github.com/mickelson/attract attract-mode
cd attract-mode
make clean
make -j 6 CROSS=1 TOOLCHAIN=i686-w64-mingw32.static WINDOWS_STATIC=1 WINDOWS_CONSOLE=1
mv attract.exe $x86c


"6")


#!/bin/bash
export PATH=$PATH:/home/mxe/usr/bin
now=$(date +"%m_%d_%Y")
x64="attract-64_$now.exe"
make clean
make -j 6 CROSS=1 TOOLCHAIN=x86_64-w64-mingw32.static WINDOWS_STATIC=1
mv attract.exe $x64

"7")
#!/bin/bash
export PATH=$PATH:/home/mxe/usr/bin
now=$(date +"%m_%d_%Y")
x64c="attract-64console_$now.exe"
git clone https://github.com/mickelson/attract attract-mode
cd attract-mode
make clean
make -j 6 CROSS=1 TOOLCHAIN=x86_64-w64-mingw32.static WINDOWS_STATIC=1 WINDOWS_CONSOLE=1
mv attract.exe $x64c




 
    esac
  
  clear



   









            
            
            
            
            

 


