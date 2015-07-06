PREFIX ?= /usr
ABBLPREFIX ?= $(PREFIX)/lib/aosc-bashlib
BINDIR ?= $(PREFIX)/bin
DESTDIR ?= 
all:abbl-invoke
.PHONY:all
abbl-invoke:abbl-invoke.in
	sed -e 's|@ABBLPREFIX@|'"$(ABBLPREFIX)"'|g' < abbl-invoke.in > abbl-invoke
	chmod a+x abbl-invoke
install:install_abbl-invoke install_lib
.PHONY:install
install_abbl-invoke:abbl-invoke
	mkdir -p $(DESTDIR)$(BINDIR)
	cp abbl-invoke $(DESTDIR)$(BINDIR)
.PHONY:install_abbl-invoke
install_lib:lib/base.sh
	mkdir -p $(DESTDIR)$(ABBLPREFIX)
	cp -r lib $(DESTDIR)$(ABBLPREFIX)/
.PHONY:install_lib
