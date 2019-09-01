# [Required] Program name + version.
AC_INIT(zed, 1.00)
# Don't trigger errors/warning because of the 'AUTHORS,...etc' package files.          
AM_INIT_AUTOMAKE([foreign tar-ustar])

# [ Required ] C++/C compilers will be used.
AC_PROG_CXX
AC_PROG_CC
 
AC_C_INLINE	# compilers will understand the "inline" keyword in C/C++ Code.

# Warning "Flags" for the Compilers.
WFLAGS= -Wall -Wextra \
         -Wno-missing-field-initializers \
         -Wno-sign-compare \
         -Wno-unused-parameter \
         -Werror=pointer-to-int-cast \
         -Wdeclaration-after-statement \
         -Werror-implicit-function-declaration \
         -Wformat-nonliteral \
         -Wformat-security \
         -Winit-self \
         -Wmissing-declarations \
         -Wmissing-include-dirs \
         -Wnested-externs \
         -Wpointer-arith \
         -Wwrite-strings

# Broadcast the variable "WFLAGS" to all Makefile listedd in "AC_CONFIG_FILES".
AC_SUBST(WFLAGS, [$WFLAGS])

# Needed to build a "Shared/Dynamic" libraries.
AC_ENABLE_SHARED
AC_DISABLE_STATIC


# [ Required ] Creating Output files (list all "Makefile" locations)
AC_CONFIG_FILES(Makefile iMath/Makefile src/Makefile)		
AC_OUTPUT
