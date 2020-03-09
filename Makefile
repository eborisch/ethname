.PHONY: all install

all:
	@true

DOCDIR = ${DESTDIR}${PREFIX}/share/ethname
install:
	install -m 555 ethname ${DESTDIR}${PREFIX}/etc/rc.d/
	mkdir -p $(DOCDIR)
	install -m 444 README.md $(DOCDIR)/

