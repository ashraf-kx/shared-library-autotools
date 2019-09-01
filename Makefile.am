
# Locate sub-directories (Folders) containing the code sources.
SUBDIRS= iMath

# CFlags recieved from "configure.ac" file via "AC_SUBST".
AM_CFLAGS = @WFLAGS@
AM_CPPFLAGS = -DLOCALEDIR="\"$(localedir)\"" # CPPFlags.

#------------ C  ------------#
lib_LTLIBRARIES = libimath.la	     # Create the Shared library using libtoolize. 
libimath_la_SOURCES= iMath/imath.h iMath/imath.c # List the Libs-source-files.
libimath_la_CFLAGS = $(AM_CFLAGS)	# Assign Compiler-flags.
include_HEADERS = iMath/imath.h     # headers included into the package [usr/include/..]


#------------ C++ ------------#
SUBDIRS += src		# add the folder containing 'sources/headers'.
bin_PROGRAMS= zed   # Give the program any name.
# list all sources/headers to build the 'zed' program.
zed_SOURCES= src/main.cpp  # Will output (main.o)
# Link the program against LIBRARIES [pro_name_LDADD = ../lib/libcexample.a]
zed_LDADD= libimath.la


ACLOCAL_AMFLAGS= -I m4