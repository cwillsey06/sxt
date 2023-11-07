# sxt - simple x tube
# see LICENSE file for copyright and license details

# sxt version
VERSION = 0.0

# customize below to fit your system

# paths
X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

# includes and libs
INCS = -I${X11INC}
LIBS = -L${X11LIB} -lX11

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_XOPEN_SOURCE=700L -DVERSION=\"${VERSION}\"
CFLAGS   = -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os ${INCS} ${CPPFLAGS}
LDFLAGS  = ${LIBS}

# compiler and linker
# CC = clang

