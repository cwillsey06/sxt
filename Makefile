# sxt - simple x tube
# see LICENSE file for copyright and license details

include config.mk

SRC = sxt.c
OBJ = ${SRC:.c=.o}

all: sxt

.c.o:
	${CC} -c ${CFLAGS} $<

config.h:
	cp config.def.h $@

sxt: ${OBJ}
	${CC} -o $@ ${OBJ} ${LDFLAGS}

clean:
	rm -f sxt ${OBJ} sxt-${VERSION}.tar.gz

dist: clean
	mkdir -p sxt-${VERSION}
	cp -R README LICENSE Makefile config.def.h ${SRC} sxt-${VERSION}
	tar -czf sxt-${VERSION}.tar.gz sxt-${VERSION}
	rm -rf sxt-${VERSION}

.PHONY: all clean dist

