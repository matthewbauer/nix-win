SET bindir=%CD%\downloaded
SET PATH=%CD%;%PATH%
SET baseurl=http://downloads.sourceforge.net/mingw

SET untar=7z x -bd -y
SET unxz=7z x -bd -y
SET curl=curl --location --max-redirs 20

mkdir %bindir%

%curl% %baseurl%/MinGW/Base/w32api/w32api-5.0.2/w32api-5.0.2-mingw32-dev.tar.xz -o %bindir%/w32api.tar.xz
%curl% %baseurl%/MinGW/Base/mingwrt/mingwrt-5.0.2/mingwrt-5.0.2-mingw32-dev.tar.xz -o %bindir%/mingwrt.tar.xz
rem %curl% %baseurl%/MinGW/Base/mingwrt/mingwrt-5.0.2/mingwrt-5.0.2-mingw32-dll.tar.xz -o %bindir%/mingwrt.tar.xz

rem experimental GCC 6 stuff
rem %curl% %baseurl%/MinGW/Base/gcc/Version6/gcc-6.3.0/libgcc-6.3.0-1-mingw32-dll-1.tar.xz -o %bindir%/libgcc.tar.xz
rem %curl% %baseurl%/MinGW/Base/gcc/Version6/gcc-6.3.0/gcc-core-6.3.0-1-mingw32-bin.tar.xz -o %bindir%/gcc-core.tar.xz
rem %curl% %baseurl%/MinGW/Base/gcc/Version6/gcc-6.3.0/libstdc%2B%2B-6.3.0-1-mingw32-dll-6.tar.xz -o %bindir%/libstdcxx.tar.xz
rem %curl% %baseurl%/MinGW/Base/gcc/Version6/gcc-6.3.0/gcc-c%2B%2B-6.3.0-1-mingw32-bin.tar.xz -o %bindir%/gcc-cxx.tar.xz
rem %curl% %baseurl%/MinGW/Base/gmp/gmp-6.1.2/libgmp-6.1.2-2-mingw32-dll-10.tar.xz -o %bindir%/libgmp.tar.xz
rem %curl% %baseurl%/MinGW/Base/mpc/mpc-1.0.3/libmpc-1.0.3-1-mingw32-dll-3.tar.xz -o %bindir%/libmpc.tar.xz

rem gcc 4.4
%curl% %baseurl%/MinGW/Base/gcc/Version4/Previous%20Release%20gcc-4.4.0/gcc-full-4.4.0-mingw32-bin-2.tar.lzma -o %bindir%/gcc.tar.lzma

rem binutils and dlls
%curl% %baseurl%/MinGW/Base/binutils/binutils-2.28/binutils-2.28-1-mingw32-bin.tar.xz -o %bindir%/binutils.tar.xz

%curl% %baseurl%/MSYS/Base/msys-core/msys-1.0.19-1/msysCORE-1.0.19-1-msys-1.0.19-bin.tar.xz -o %bindir%/msysCORE.tar.xz
%curl% %baseurl%/MSYS/Base/regex/regex-1.20090805-2/libregex-1.20090805-2-msys-1.0.13-dll-1.tar.lzma -o %bindir%/libregex.tar.lzma
%curl% %baseurl%/MSYS/Base/termcap/termcap-0.20050421_1-2/libtermcap-0.20050421_1-2-msys-1.0.13-dll-0.tar.lzma -o %bindir%/libtermcap.tar.lzma
%curl% %baseurl%/MSYS/Base/termcap/termcap-0.20050421_1-2/termcap-0.20050421_1-2-msys-1.0.13-bin.tar.lzma -o %bindir%/termcap.tar.lzma
%curl% %baseurl%/MSYS/Base/libiconv/libiconv-1.14-1/libiconv-1.14-1-msys-1.0.17-dll-2.tar.lzma -o %bindir%/libiconv.tar.lzma
%curl% %baseurl%/MSYS/Base/libiconv/libiconv-1.14-1/libcharset-1.14-1-msys-1.0.17-dll-1.tar.lzma -o %bindir%/libcharset.tar.lzma
%curl% %baseurl%/MSYS/Base/gettext/gettext-0.18.1.1-1/libintl-0.18.1.1-1-msys-1.0.17-dll-8.tar.lzma -o %bindir%/libintl.tar.lzma
%curl% %baseurl%/MSYS/Base/gettext/gettext-0.18.1.1-1/libgettextpo-0.18.1.1-1-msys-1.0.17-dll-0.tar.lzma -o %bindir%/libgettextpo.tar.lzma

rem stdenv stuff
%curl% %baseurl%/MSYS/Base/bash/bash-3.1.23-1/bash-3.1.23-1-msys-1.0.18-bin.tar.xz -o %bindir%/bash.tar.xz
%curl% %baseurl%/MSYS/Base/findutils/findutils-4.4.2-2/findutils-4.4.2-2-msys-1.0.13-bin.tar.lzma -o %bindir%/findutils.tar.lzma
%curl% %baseurl%/MSYS/Base/coreutils/coreutils-5.97-3/coreutils-5.97-3-msys-1.0.13-bin.tar.lzma -o %bindir%/coreutils.tar.lzma
%curl% %baseurl%/MSYS/Base/sed/sed-4.2.1-2/sed-4.2.1-2-msys-1.0.13-bin.tar.lzma -o %bindir%/sed.tar.lzma
%curl% %baseurl%/MSYS/Base/grep/grep-2.5.4-2/grep-2.5.4-2-msys-1.0.13-bin.tar.lzma -o %bindir%/grep.tar.lzma
%curl% %baseurl%/MSYS/Base/gzip/gzip-1.3.12-2/gzip-1.3.12-2-msys-1.0.13-bin.tar.lzma -o %bindir%/gzip.tar.lzma
%curl% %baseurl%/MSYS/Base/xz/xz-5.0.3-1/xz-5.0.3-1-msys-1.0.17-bin.tar.lzma -o %bindir%/xz.tar.lzma
%curl% %baseurl%/MSYS/Base/make/make-3.81-3/make-3.81-3-msys-1.0.13-bin.tar.lzma -o %bindir%/make.tar.lzma
%curl% %baseurl%/MSYS/Base/diffutils/diffutils-2.8.7.20071206cvs-3/diffutils-2.8.7.20071206cvs-3-msys-1.0.13-bin.tar.lzma -o %bindir%/diffutils.tar.lzma
%curl% %baseurl%/MSYS/Base/tar/tar-1.23-1/tar-1.23-1-msys-1.0.13-bin.tar.lzma -o %bindir%/tar.tar.lzma
%curl% %baseurl%/MSYS/Base/gawk/gawk-3.1.7-2/gawk-3.1.7-2-msys-1.0.13-bin.tar.lzma -o %bindir%/gawk.tar.lzma
%curl% %baseurl%/MSYS/Base/bzip2/bzip2-1.0.6-1/bzip2-1.0.6-1-msys-1.0.17-bin.tar.lzma -o %bindir%/bzip2.tar.lzma

cd %bindir%
for %%i in (%bindir%\*.tar.xz) do (
    %unxz% -o%bindir% %%i
    del %%i
)
for %%i in (%bindir%\*.tar.lzma) do (
    %unxz% -o%bindir% %%i
    del %%i
)
for %%i in (%bindir%\*.tar) do (
    %untar% -o%bindir% %%i
    del %%i
)
cd ..

%curl% https://nixos.org/releases/nix/nix-2.0.1/nix-2.0.1.tar.xz -o nix.tar.xz
%unxz% nix.tar.xz
del nix.tar.xz
%untar% nix.tar
del nix.tar

SET PATH=%bindir%\bin

cd nix-2.0.1
bash configure
make
