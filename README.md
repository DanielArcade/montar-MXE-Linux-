# montar-MXE-Linux-
Montar MXE Linux (testado Linux Ubuntu e no Linux Mint)

//-----------------------------------------------------------------------------------------------------------------
//-------------------------- Montar MXE Daniel Arcade -------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------

1

sudo apt-get update

2

sudo apt-get install build-essential

3

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

4
	
git clone https://github.com/mxe/mxe.git
cd mxe
		
5

Para 32 e 64 bits 
	
make MXE_TARGETS='x86_64-w64-mingw32.static i686-w64-mingw32.static' ffmpeg sfml


Para 64 bits

make MXE_TARGETS='x86_64-w64-mingw32.static' ffmpeg sfml


Para 32 bits 

make MXE_TARGETS='i686-w64-mingw32.static' ffmpeg sfml



//-----------------------------------------------------------------------------------------------------------------
