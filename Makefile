CFLAGS:=$(shell pkg-config --cflags dbus-1) -DHAVE_LIBSYSTEMD -DHAVE_UNISTD_H -DGETTIMEOFDAY_TWO_ARGS -O3
LDFLAGS:=$(shell pkg-config --libs dbus-1) $(shell pkg-config --libs libsystemd)
idlehack: idlehack.o blurb.o yarandom.o
	cc -o $@ $? $(LDFLAGS)

