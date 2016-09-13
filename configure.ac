AC_PREREQ([2.69])
AC_INIT([gctp], [2.0], [guix-devel@gnu.org])
AM_INIT_AUTOMAKE(foreign)
LT_INIT
AC_CONFIG_SRCDIR([source/cproj.c])
AC_CONFIG_HEADERS([config.h])

# Checks for programs.
AC_PROG_CC

# Checks for libraries.
AC_CHECK_LIB([m], [sin])

# Checks for header files.
AC_CHECK_HEADERS([stdlib.h string.h])

# Checks for library functions.
AC_CHECK_FUNCS([pow sqrt sincos])

AC_CONFIG_FILES([Makefile
        source/Makefile])
AC_OUTPUT
