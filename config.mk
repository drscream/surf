# surf version
VERSION = 2.0

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man
LIBPREFIX = $(PREFIX)/lib/surf

X11INC = /usr/local/include/X11/
X11LIB = /usr/local/lib/X11/

GTKINC = `pkg-config --cflags gtk+-3.0 gcr-3 webkit2gtk-4.0`
GTKLIB = `pkg-config --libs gtk+-3.0 gcr-3 webkit2gtk-4.0`

# includes and libs
INCS = -I$(X11INC) $(GTKINC)
LIBS = -L$(X11LIB) -lX11 $(GTKLIB) -lgthread-2.0

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" -DWEBEXTDIR=\"${LIBPREFIX}\" \
           -D_DEFAULT_SOURCE -DGCR_API_SUBJECT_TO_CHANGE
SURF_CFLAGS = $(INCS) $(CPPFLAGS) $(CFLAGS)
SURF_LDFLAGS = $(LIBS) $(LDFLAGS)

# Solaris
#CFLAGS = -fast $(INCS) -DVERSION=\"$(VERSION)\"
#LDFLAGS = $(LIBS)

# compiler and linker
#CC = c99
