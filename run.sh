#!/bin/sh
autoscan;

libtoolize;
aclocal;
autoheader;
autoconf;
automake --add-missing;
clear;
./configure --enable-static --enable-shared --host=i686-w64-mingw32
echo "#### make ####\n";
make