.PHONY: all install

all:
	@true

RCDIR = ${DESTDIR}${PREFIX}/etc/rc.d
DOCDIR = ${DESTDIR}${PREFIX}/share/ethname
MANDIR = ${DESTDIR}${PREFIX}/share/man/man8

install:
	mkdir -p $(RCDIR)
	install -m 555 ethname $(RCDIR)/
	mkdir -p $(DOCDIR)
	install -m 444 README.md $(DOCDIR)/
	mkdir -p $(MANDIR)
	install -m 444 ethname.8 $(MANDIR)/

